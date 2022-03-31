import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/di/injectable.dart';
import 'package:tasks_app/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:tasks_app/features/auth/presentation/screens/login_screen.dart';
import 'package:tasks_app/features/auth/presentation/screens/register_screen.dart';
import 'package:tasks_app/features/get_tasks/presentation/bloc/get_tasks_cubit.dart';
import 'package:tasks_app/features/get_tasks/presentation/screens/task_list_screen.dart';
import 'package:tasks_app/features/upload_task/core/bloc/upload_task_cubit.dart';
import 'package:tasks_app/features/upload_task/core/screens/upload_task_screen.dart';

mixin AppRouter {
  static Route<MaterialPageRoute>? onGenerateRoute(
    RouteSettings routeSettings,
  ) {
    switch (routeSettings.name) {
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: LoginScreen(),
          ),
        );
      case RegisterScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: RegisterScreen(),
          ),
        );
      case TaskListScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<GetTasksCubit>()),
              BlocProvider(create: (context) => getIt<UploadTaskCubit>()),
              //BlocProvider(create: (context) => getIt<GetTasksCubit>()),
              BlocProvider(create: (context) => getIt<AuthCubit>()),
            ],
            child: const TaskListScreen(),
          ),
        );
      case UploadTaskScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<UploadTaskCubit>(),
            child: UploadTaskScreen(),
          ),
          settings: routeSettings,
        );
      default:
        return null;
    }
  }
}
