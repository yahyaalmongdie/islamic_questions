import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'options_state.dart';

class OptionsCubit extends Cubit<OptionsState> {
  OptionsCubit() : super(OptionsInitial());

  List<int?> selectedOptions = List.generate(10, (index) => null);
  List<bool> corectAnswers = List.filled(10, false);

  int score = 0;

  void onChangeOption({required int pageViewIndex, required int value}) {
    emit(OptionsInitial());
    selectedOptions[pageViewIndex] = value;
    emit(ChooseOptionSuccess());
  }

  void countScore({
    required int coorectAnswer,
    required int answerIndex,
    required int pageViewIndex,
  }) {
    emit(OptionsInitial());
    if (coorectAnswer == answerIndex && corectAnswers[pageViewIndex] == false) {
      corectAnswers[pageViewIndex] = true;
      score = corectAnswers.where((item) => item == true).length;
    } else {
      corectAnswers[pageViewIndex] = false;
      score = corectAnswers.where((item) => item == true).length;
    }
    emit(CounntScore());
  }
}
