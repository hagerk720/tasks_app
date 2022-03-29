import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/core/presentation/widgets/password_text_form_field.dart';
import 'package:tasks_app/features/auth/domain/entities/register_entity.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/task_list_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen();
  static const routeName = 'register';
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'REGISTER',
                style: textTheme.headline1,
              ),
              CustomTextFormField(
                controller: nameController,
                hintText: 'Full name',
                prefixIcon: Icons.person_outline,
                keyboardType: TextInputType.name,
                validator: (value) => generalValidator(
                  value: value,
                  fieldName: 'Name',
                ),
              ),
              CustomTextFormField(
                controller: emailController,
                hintText: 'Email Address',
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                validator: (value) => emailValidator(value),
              ),
              PasswordTextFormField(controller: passwordController),
              const SizedBox(height: 16),
              BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  bool isLoading = false;
                  state.maybeWhen(
                    loading: () => isLoading = true,
                    error: (error) => showErrorToast(errorMessage: error),
                    success: () => Navigator.of(context).pushReplacementNamed(
                      TaskListScreen.routeName,
                    ),
                    orElse: () {},
                  );
                  return CustomElevatedButton(
                    label: 'register',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthCubit>(context).register(
                          registerEntity: RegisterEntity(
                            name: nameController.text,
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                        );
                      }
                    },
                    isLoading: isLoading,
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: textTheme.headline2,
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(LoginScreen.routeName),
                    child: const Text('LOGIN'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
