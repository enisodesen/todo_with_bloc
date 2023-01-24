import 'package:flutter/material.dart';
import 'package:todo_with_bloc/blocs/bloc_exports.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        List<Task> tasksList = state.allTasks;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Tasks App'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
          ),
          body: Column(
            children: [
              const Center(
                child: Chip(label: Text('Tasks:')),
              ),
              TaskList(taskList: tasksList),
            ],
          ),
        );
      },
    );
  }
}
