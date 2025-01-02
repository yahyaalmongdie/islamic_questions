import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit() : super(QuestionsInitial());

  bool showNextArrow = true;

  onPressNext({required List questions}) {
    emit(QuestionsInitial());
    if (questions.last) {
      showNextArrow = true;
    }
    emit(HideNextButton());
  }
}
