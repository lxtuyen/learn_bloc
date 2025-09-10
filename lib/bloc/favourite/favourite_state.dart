part of 'favourite_bloc.dart';

sealed class FavouriteState extends Equatable {

  final List<String> todoList;

  const FavouriteState(this.todoList);

  ToDoInitial copyWith({List<String>? todoList});
  
  @override
  List<Object> get props => [todoList];
}

final class ToDoInitial extends FavouriteState {
  const ToDoInitial(super.todoList);

  @override
  ToDoInitial copyWith({List<String>? todoList}){
    return ToDoInitial(todoList ?? this.todoList);
  }
}
