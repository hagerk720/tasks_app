import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/due_date_button.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_state.dart';
import 'package:tasks_app/features/upload_task/core/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/widgets/custom_drop_down_button_form_field.dart';

// ignore: must_be_immutable
class UploadTaskScreen extends StatelessWidget {
  UploadTaskScreen();
  static const routeName = '/create_task';
  final priorities = ['High', 'Medium', 'Low'];
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  String? selectedPriority;
  DateTime selectedTime = DateTime.now();
  File? attachmentFile;
  Color iconColor = Colors.white;
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final task = ModalRoute.of(context)!.settings.arguments as GetTaskEntity?;
    final screenHeight = MediaQuery.of(context).size.height;
    if (task != null) {
      titleController.text = task.title;
      descriptionController.text = task.description;
      selectedPriority = task.priority;
      selectedTime = DateTime.parse(task.period);
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
                  StatefulBuilder(
                    builder: (
                      BuildContext context,
                      void Function(void Function()) setState,
                    ) {
                      return Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                            color: iconColor,
                          ),
                          child: CustomDropDownButtonFormField(
                            itemsNames: priorities,
                            value: selectedPriority,
                            onChanged: (value) {
                              if (value != null) {
                                setState(() {
                                  value == 'High'
                                      ? iconColor = const Color(0xfffeccd1)
                                      : value == 'Medium'
                                          ? iconColor = const Color(0xfffee2c6)
                                          : iconColor = const Color(0xffd6f1ff);
                                });
                                selectedPriority = value;
                              }
                            },
                            hintText: 'Priority',
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: StatefulBuilder(
                      builder: (context, setState) => DueDateButton(
                        selectedDate: selectedDate,
                        onChanged: () async {
                          final DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: selectedDate,
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(
                              const Duration(days: 100),
                            ),
                          );
                          if (pickedDate != null &&
                              pickedDate != selectedDate) {
                            setState(() => selectedDate = pickedDate);
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: MaterialButton(
                      height: .07 * screenHeight,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onPressed: () async => attachmentFile = await _pickFile(),
                      child: const Icon(
                        Icons.attachment,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
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
                      return Expanded(
                        flex: 7,
                        child: CustomElevatedButton(
                          label: 'submit',
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              final uploadTaskCubit =
                                  BlocProvider.of<UploadTaskCubit>(context);
                              final uploadedTask = UploadTaskEntity(
                                title: titleController.text,
                                description: descriptionController.text,
                                priority: selectedPriority!,
                                period: selectedTime.toString(),
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
                        ),
                      );
                    },
                  ),
                ],
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
