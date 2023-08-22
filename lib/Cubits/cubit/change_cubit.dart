import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'change_state.dart';

class ChangeCubit extends Cubit<ChangeState> {
  ChangeCubit() : super(ChangeInitial());
  void showtext() {
    emit(Showtext());
  }

  void showimage() {
    emit(Showimage());
  }

  void showcircle() {
    emit(Showcircle());
  }

  void reset() {
    emit(ChangeInitial());
  }
}
