import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tasks_app/features/create_task/presentation/bloc/create_task_state.dart';

class CreateTaskCubit extends Cubit<CreateTaskState> {
  CreateTaskCubit() : super(const CreateTaskInitial());
}
