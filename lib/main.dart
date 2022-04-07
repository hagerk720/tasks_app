import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/core/domain/di/injectable.dart';
import 'package:tasks_app/core/presentation/bloc/bloc_observer.dart';
import 'package:tasks_app/core/presentation/router/app_router.dart';
import 'package:tasks_app/core/presentation/theme/my_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  BlocOverrides.runZoned(
    () => runApp(const TasksApp()),
    blocObserver: MyBlocObserver(),
  );
}

class TasksApp extends StatelessWidget {
  const TasksApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
