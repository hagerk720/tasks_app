import 'package:equatable/equatable.dart';

class GetTaskEntity extends Equatable {
  final String title;
  final String description;
  final String priority;
  final int state;
  final String? period;
  final String? attachmentUrl;

  const GetTaskEntity({
    required this.title,
    required this.description,
    required this.priority,
    required this.state,
    this.period,
    this.attachmentUrl,
  });

  @override
  List<Object?> get props => [
        title,
        description,
        priority,
        state,
        period,
        attachmentUrl,
      ];
}
