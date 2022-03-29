import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:tasks_app/core/domain/entities/task_entity.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/features/create_task/presentation/bloc/create_task_cubit.dart';
import 'package:tasks_app/features/create_task/presentation/bloc/create_task_state.dart';
import 'package:tasks_app/features/create_task/presentation/widgets/custom_drop_down_button_form_field.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/task_list_screen.dart';

class CreateTaskScreen extends StatelessWidget {
  CreateTaskScreen();
  static const routeName = '/create_task';
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final priorities = [
    'High',
    'Medium',
    'Low',
  ];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? selectedPriority;
    DateTime selectedTime = DateTime(0);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Create Task'),
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
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Upload',
                                style: Theme.of(context).textTheme.headline2,
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
              BlocBuilder<CreateTaskCubit, CreateTaskState>(
                builder: (context, state) {
                  bool isLoading = false;
                  state.maybeWhen(
                    loading: () => isLoading = true,
                    error: (error) => showErrorToast(errorMessage: error),
                    success: () =>
                        WidgetsBinding.instance!.addPostFrameCallback(
                      (_) {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.of(context)
                            .pushReplacementNamed(TaskListScreen.routeName);
                      },
                    ),
                    orElse: () {},
                  );
                  return CustomElevatedButton(
                    label: 'submit',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final selectedPeriod =
                            selectedTime.toString().substring(11, 16);
                        BlocProvider.of<CreateTaskCubit>(context).createTask(
                          TaskEntity(
                            title: titleController.text,
                            description: descriptionController.text,
                            priority: selectedPriority!,
                            period: selectedPeriod != '00:00'
                                ? selectedPeriod
                                : null,
                            state: '1',
                          ),
                        );
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
}
