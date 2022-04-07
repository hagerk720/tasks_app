import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasks_app/core/presentation/util/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/features/get_tasks/domain/entities/get_task_entity.dart';
import 'package:tasks_app/features/get_tasks/presentation/widgets/due_date_button.dart';
import 'package:tasks_app/features/upload_task/core/domain/entities/upload_task_entity.dart';
import 'package:tasks_app/features/upload_task/core/presentation/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/presentation/bloc/upload_task_state.dart';
import 'package:tasks_app/features/upload_task/core/presentation/widgets/custom_drop_down_button_form_field.dart';

class UploadTaskScreen extends StatefulWidget {
  const UploadTaskScreen();
  static const routeName = '/create_task';
  @override
  State<UploadTaskScreen> createState() => _UploadTaskScreenState();
}

class _UploadTaskScreenState extends State<UploadTaskScreen> {
  GetTaskEntity? task;
  final _formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  late AppLocalizations appLocalizations;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    task = ModalRoute.of(context)!.settings.arguments as GetTaskEntity?;
    if (task != null) {
      titleController.text = task!.title;
      descriptionController.text = task!.description;
      selectedPriority = task!.priority;
      selectedTime = DateTime.parse(task!.period);
    }
    appLocalizations = AppLocalizations.of(context)!;
    priorities = [
      appLocalizations.high,
      appLocalizations.medium,
      appLocalizations.low,
    ];
  }

  late List<String> priorities;
  String? selectedPriority;
  File? attachmentFile;
  Color iconColor = Colors.white;
  DateTime selectedTime = DateTime.now();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          task == null
              ? appLocalizations.createTask
              : appLocalizations.editTask,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextFormField(
                controller: titleController,
                hintText: appLocalizations.title,
                prefixIcon: Icons.title,
                keyboardType: TextInputType.text,
                validator: (title) => generalValidator(
                  context: context,
                  value: title,
                  fieldName: appLocalizations.title,
                ),
              ),
              CustomTextFormField(
                controller: descriptionController,
                hintText: appLocalizations.description,
                prefixIcon: Icons.description,
                keyboardType: TextInputType.text,
                validator: (description) => generalValidator(
                  context: context,
                  value: description,
                  fieldName: appLocalizations.description,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  StatefulBuilder(
                    builder: (
                      context,
                      setState,
                    ) {
                      return Container(
                        width: MediaQuery.of(context).size.width * .46,
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
                                value == priorities[0]
                                    ? iconColor = const Color(0xfffeccd1)
                                    : value == priorities[1]
                                        ? iconColor = const Color(0xfffee2c6)
                                        : iconColor = const Color(0xffd6f1ff);
                              });
                              selectedPriority = value;
                            }
                          },
                          hintText: appLocalizations.priority,
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 12),
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
                      height: MediaQuery.of(context).size.height * .07,
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
                          label: appLocalizations.submit,
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
                                  taskId: task!.id,
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
