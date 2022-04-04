import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/error/error_toast.dart';
import 'package:tasks_app/core/presentation/validation/validators.dart';
import 'package:tasks_app/core/presentation/widgets/custom_elevated_button.dart';
import 'package:tasks_app/core/presentation/widgets/custom_text_form_field.dart';
import 'package:tasks_app/core/presentation/widgets/password_text_form_field.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_state.dart';
import 'package:tasks_app/features/auth/presentation/screens/register_screen.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/task_list_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();
  static const routeName = '/';
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController(text: 'omar@gmail.com');
  final passwordController = TextEditingController(text: '123456');
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
                'LOGIN',
                style: textTheme.headline1,
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
                    success: () =>
                        WidgetsBinding.instance!.addPostFrameCallback(
                      (_) => Navigator.of(context).pushReplacementNamed(
                        TaskListScreen.routeName,
                      ),
                    ),
                    orElse: () {},
                  );
                  return CustomElevatedButton(
                    label: 'login',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        BlocProvider.of<AuthCubit>(context).login(
                          email: emailController.text,
                          password: passwordController.text,
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
                    "Don't have an account?",
                    style: textTheme.headline6,
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context)
                        .pushReplacementNamed(RegisterScreen.routeName),
                    child: const Text('REGISTER'),
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
