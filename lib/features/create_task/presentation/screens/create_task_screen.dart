import 'package:flutter/material.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/features/create_task/presentation/widgets/custom_drop_down_button_form_field.dart';

class CreateTaskScreen extends StatelessWidget {
  CreateTaskScreen();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final priorities = [
    'High',
    'Medium',
    'Low',
  ];
  bool isLoading = false;
  String selectedPriority = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Row(
                children: [
                  Expanded(
                    child: CustomDropDownButtonFormField(
                      itemsNames: priorities,
                      onChanged: (value) {
                        if (value != null) {
                          selectedPriority = value;
                        }
                      },
                      hintText: 'Priority',
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Upload',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.attachment),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                label: 'submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
                isLoading: isLoading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
