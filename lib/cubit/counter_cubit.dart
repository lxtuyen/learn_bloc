import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class TestCubit extends Cubit<TestState> {
  TestCubit() : super(TestInitial());
}
