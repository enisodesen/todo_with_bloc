part of 'tasks_bloc.dart';

class TasksState extends Equatable {
  final List<Task> allTasks;
  const TasksState({this.allTasks = const <Task>[]});

  @override
  List<Object> get props => [allTasks];
}

class AddTask extends TasksEvent {
  final Task task;

  const AddTask({required this.task});

  @override
  List<Object> get props => [task];
}

class UpdateTask extends TasksEvent {
  final Task task;

  const UpdateTask({required this.task});

  @override
  List<Object> get props => [task];
}

class DeleteTask extends TasksEvent {
  final Task task;

  const DeleteTask({required this.task});

  @override
  List<Object> get props => [task];
}
