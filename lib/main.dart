import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tasks_app/core/presentation/bloc/bloc_observer/bloc_observer.dart';
import 'package:tasks_app/core/presentation/bloc/localization_cubit/localization_cubit.dart';
import 'package:tasks_app/core/presentation/bloc/localization_cubit/localization_state.dart';
import 'package:tasks_app/core/presentation/router/app_router.dart';
import 'package:tasks_app/core/presentation/theme/my_theme.dart';
import 'package:tasks_app/di/injectable.dart';

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
    return BlocProvider(
      create: (context) => getIt<LocalizationCubit>(),
      child: BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: myTheme,
            onGenerateRoute: onGenerateRoute,
            locale: state is LocalizationChanged
                ? Locale(state.local)
                : const Locale('en'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}
