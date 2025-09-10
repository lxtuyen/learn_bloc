part of 'switch_bloc.dart';

sealed class SwitchState extends Equatable {
  final bool isSwitch;
  final double isSlider;
  const SwitchState({this.isSwitch = false, this.isSlider = 1.0});

  SwitchState copyWith({bool? isSwitch,double? isSlider});

  @override
  List<Object> get props => [isSwitch,isSlider];
}

final class SwitchInitial extends SwitchState {
  const SwitchInitial({super.isSwitch,super.isSlider});

  @override
  SwitchInitial copyWith({bool? isSwitch,double? isSlider}) {
    return SwitchInitial(isSwitch: isSwitch ?? this.isSwitch, isSlider: isSlider ?? this.isSlider);
  }
}
