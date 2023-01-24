import 'package:flutter/material.dart';
import 'package:todo_with_bloc/blocs/bloc_exports.dart';
import 'package:todo_with_bloc/models/task.dart';
import 'package:todo_with_bloc/screens/task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TasksBloc()..add(AddTask(task: Task(title: 'Task1'))),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TaskScreen(),
      ),
    );
  }
}
