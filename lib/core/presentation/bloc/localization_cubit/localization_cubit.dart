import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tasks_app/core/presentation/bloc/localization_cubit/localization_state.dart';

@lazySingleton
class LocalizationCubit extends Cubit<LocalizationState> {
  LocalizationCubit() : super(const LocalizationInitial());

  void changeLanguage(String languageCode) =>
      emit(LocalizationChanged(languageCode));
}
