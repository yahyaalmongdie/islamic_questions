import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial());

  int chooseOption = 10;

  List<int?> selectedOptions = List.generate(10, (index) => null);
  void onChangeOption({required int pageViewIndex, required int value}) {
    emit(OptionsInitial());
    selectedOptions[pageViewIndex] = value;
    emit(ChooseOptionSuccess());
  }
}
