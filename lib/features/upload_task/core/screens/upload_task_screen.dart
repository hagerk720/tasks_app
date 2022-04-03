import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_state.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/widgets/custom_drop_down_button_form_field.dart';

class UploadTaskScreen extends StatelessWidget {
  UploadTaskScreen();
  static const routeName = '/create_task';
  final priorities = ['High', 'Medium', 'Low'];
  Color iconColor = Colors.white;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var titleController = TextEditingController();
    var descriptionController = TextEditingController();
    String? selectedPriority;
    DateTime selectedTime = DateTime(0);
    File? attachmentFile;
    final task = ModalRoute.of(context)!.settings.arguments as GetTaskEntity?;
    if (task != null) {
      titleController = TextEditingController(text: task.title);
      descriptionController = TextEditingController(text: task.description);
      selectedPriority = task.priority;
      selectedTime = DateTime.parse('00000000 ${task.period}');
    }
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(task == null ? 'Create Task' : 'Update Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: titleController,
                hintText: 'Title',
                prefixIcon: Icons.title,
                keyboardType: TextInputType.text,
                validator: (value) => generalValidator(
                  value: value,
                  fieldName: 'Title',
                ),
              ),
              CustomTextFormField(
                controller: descriptionController,
                hintText: 'Description',
                prefixIcon: Icons.description,
                keyboardType: TextInputType.text,
                validator: (value) => generalValidator(
                  value: value,
                  fieldName: 'Description',
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDropDownButtonFormField(
                          itemsNames: priorities,
                          value: selectedPriority,
                          onChanged: (value) {
                            if (value != null) {
                             
                              selectedPriority = value;
                            }
                          },
                          hintText: 'Priority',
                        ),
                        const SizedBox(height: 12),
                        MaterialButton(
                          height: 50,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          onPressed: () async =>
                              attachmentFile = await _pickFile(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'UPLOAD',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.attachment,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(16)),
                      ),
                      child: TimePickerSpinner(
                        itemHeight: 40,
                        itemWidth: 40,
                        onTimeChange: (newValue) => selectedTime = newValue,
                        time: selectedTime,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              BlocBuilder<UploadTaskCubit, UploadTaskState>(
                builder: (context, state) {
                  bool isLoading = false;
                  state.maybeWhen(
                    loading: () => isLoading = true,
                    error: (error) => showErrorToast(errorMessage: error),
                    success: () =>
                        WidgetsBinding.instance!.addPostFrameCallback(
                      (_) => Navigator.of(context).pop(),
                    ),
                    orElse: () {},
                  );
                  return CustomElevatedButton(
                    label: 'submit',
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        final uploadTaskCubit =
                            BlocProvider.of<UploadTaskCubit>(context);
                        final selectedPeriod =
                            selectedTime.toString().substring(11, 16);
                        final uploadedTask = UploadTaskEntity(
                          title: titleController.text,
                          description: descriptionController.text,
                          priority: selectedPriority!,
                          period: selectedPeriod,
                          state: 0,
                          attachementFile: attachmentFile,
                        );
                        if (task == null) {
                          uploadTaskCubit.createTask(
                            uploadTaskEntity: uploadedTask,
                          );
                        } else {
                          uploadTaskCubit.updateTask(
                            taskId: task.id,
                            uploadTaskEntity: uploadedTask,
                          );
                        }
                      }
                    },
                    isLoading: isLoading,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<File?> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return null;
    final path = result.files.last.path;
    if (path == null) return null;
    return File(path);
  }
}
