import 'package:flutter/material.dart';
import 'package:tasks_app/core/presentation/theme/my_theme.dart';
import 'package:tasks_app/features/get_tasks/presentaion/widgets/task_widget.dart';

class TaskListScreen extends StatefulWidget {
  const TaskListScreen({Key? key}) : super(key: key);
  static const routeName = '/tasks';
  @override
  State<TaskListScreen> createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [
    Task(
        taskTitle: "first",
        taskDesc: "hdhsajgsaasjfhjsafhj",
        taskPriority: "high"),
    Task(
        taskTitle: "second",
        taskDesc:
            "hdhsajgsaasjfhjsafhjjxnjxjsahxjhsajxsjcxsjcisjcijisisjjcjcjcjcjcjjcjcjcjcjcjcjcjcjcjcjcj,sa",
        taskPriority: "low"),
  ];
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final colorTheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
      ),
      backgroundColor: Color.fromARGB(250, 249, 246, 246),
      body: Stack(children: [
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return TaskWidget(
              task: tasks[index],
            );
          },
          itemCount: tasks.length,
          padding: EdgeInsets.all(screenWidth / 20),
        ),
        Align(
          alignment: FractionalOffset.bottomRight,
          child: Container(
            margin: EdgeInsets.only(right: 10, bottom: 20),
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
              backgroundColor: colorTheme.primary,
            ),
          ),
        )
      ]),
    );
  }
}

class Task {
  String? taskTitle;
  String? taskDesc;
  String? taskPriority;
  Task({
    this.taskTitle,
    this.taskDesc,
    this.taskPriority,
  });
}
