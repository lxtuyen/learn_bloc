part of 'to_do_bloc.dart';

sealed class ToDoEvent extends Equatable {
  const ToDoEvent();

  @override
  List<Object> get props => [];
}

class AddTodoEvent extends ToDoEvent{
  final String task;
  const AddTodoEvent({required this.task});
  @override
  List<Object> get props => [task];
}

class RemoveTodoEvent extends ToDoEvent {
    final Object task;
  const RemoveTodoEvent({required this.task});
  @override
  List<Object> get props => [task];
}
