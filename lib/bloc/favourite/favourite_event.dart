part of 'favourite_bloc.dart';

sealed class FavouriteEvent extends Equatable {
  const FavouriteEvent();

  @override
  List<Object> get props => [];
}

class AddFavouriteEvent extends FavouriteEvent{
  final String task;
  const AddFavouriteEvent({required this.task});
  @override
  List<Object> get props => [task];
}

class RemoveFavouriteEvent extends FavouriteEvent {
    final Object task;
  const RemoveFavouriteEvent({required this.task});
  @override
  List<Object> get props => [task];
}
