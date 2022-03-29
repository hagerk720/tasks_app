import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/di/injectable.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/screens/register_screen.dart';
import 'package:tasks_app/features/create_task/presentation/bloc/create_task_cubit.dart';
import 'package:tasks_app/features/create_task/presentation/screens/create_task_screen.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/task_list_screen.dart';

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
          builder: (context) => BlocProvider(
            create: (context) => getIt<GetTasksCubit>(),
            child: const TaskListScreen(),
          ),
        );
      case CreateTaskScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<CreateTaskCubit>(),
            child: CreateTaskScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
