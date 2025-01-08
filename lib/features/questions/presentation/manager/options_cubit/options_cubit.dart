import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial());

  int  chooseOption = 10;

  void onChangeOption({required int index}) {
    emit(OptionsInitial());
    chooseOption = index;
    emit(ChooseOptionSuccess());
  }
}
