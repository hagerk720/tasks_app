import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String title;
  final String description;
  final String priority;
  final int state;
  final String? attachementUrl;
  final String? period;

  const Task({
    required this.title,
    required this.description,
    required this.priority,
    required this.state,
    this.attachementUrl,
    this.period,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        priority,
        state,
        attachementUrl,
        period,
      ];
}
