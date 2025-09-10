part of 'to_do_bloc.dart';

sealed class ToDoState extends Equatable {

  final List<String> todoList;

  const ToDoState(this.todoList);

  ToDoInitial copyWith({List<String>? todoList});
  
  @override
  List<Object> get props => [todoList];
}

final class ToDoInitial extends ToDoState {
  const ToDoInitial(super.todoList);

  @override
  ToDoInitial copyWith({List<String>? todoList}){
    return ToDoInitial(todoList ?? this.todoList);
  }
}
