import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'questions_state.dart';

class QuestionsCubit extends Cubit<QuestionsState> {
  QuestionsCubit() : super(QuestionsInitial());

  int currentPage = 0;
  bool showNextArrow = true;
  bool showPreviousArrow = false;
  late PageController pageController;

  onChangePage({required int index}) {
    emit(QuestionsInitial());
    currentPage = index;
    emit(ChangeQuestionSuccess());
  }

  onPressNext({required List questions}) {
    currentPage++;
    if (currentPage > questions.length - 2) {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 600), curve: Curves.easeInOut);
      showNextArrow = false;
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 600), curve: Curves.easeInOut);

      showPreviousArrow = true;
    }
    emit(ChangeQuestionSuccess());
  }

  onPressedPrevious({required int index}) {
    if (index > 1) {
      currentPage--;
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 600), curve: Curves.easeInOut);
      showNextArrow = true;
    } else {
      currentPage = 0;
      pageController.animateToPage(currentPage,
          duration: const Duration(microseconds: 600), curve: Curves.easeInOut);
      showPreviousArrow = false;
    }
    emit(ChangeQuestionSuccess());
  }
}
