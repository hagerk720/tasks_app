import 'package:flutter/material.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/screens/register_screen.dart';
import 'package:tasks_app/features/get_tasks/presentaion/screens/task_list_screen.dart';

mixin AppRouter {
  static Route<MaterialPageRoute>? onGenerateRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => LoginScreen(),
        );
      case RegisterScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => RegisterScreen(),
        );
       case TaskListScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const TaskListScreen(),
        ); 


      default:
        return null;
    }
  }
}
