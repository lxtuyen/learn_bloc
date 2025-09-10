import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteBloc() : super(const ToDoInitial([])) {
    on<AddFavouriteEvent>((event, emit) {
      final updatedList = List<String>.from(state.todoList)..add(event.task);
      emit(state.copyWith(todoList: updatedList));
    });
    on<RemoveFavouriteEvent>((event, emit) {
      final updatedList = List<String>.from(state.todoList)..remove(event.task);
      emit(state.copyWith(todoList: updatedList));
    });
  }
}

