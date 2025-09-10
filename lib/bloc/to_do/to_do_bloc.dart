import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'to_do_event.dart';
part 'to_do_state.dart';

class ToDoBloc extends Bloc<ToDoEvent, ToDoState> {
  ToDoBloc() : super(const ToDoInitial([])) {
    on<AddTodoEvent>((event, emit) {
      final updatedList = List<String>.from(state.todoList)..add(event.task);
      emit(state.copyWith(todoList: updatedList));
    });
    on<RemoveTodoEvent>((event, emit) {
      final updatedList = List<String>.from(state.todoList)..remove(event.task);
      emit(state.copyWith(todoList: updatedList));
    });
  }
}

