import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'switch_event.dart';
part 'switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent, SwitchState> {
  SwitchBloc() : super(const SwitchInitial()) {
    on<EnableOrDisableNotification>((event, emit) {
      final current = state.isSwitch;
      emit(state.copyWith(isSwitch: !current));
    });
    on<SliderEvent>((event, emit) {
      emit(state.copyWith(isSlider: event.slider));
    });
  }
}
