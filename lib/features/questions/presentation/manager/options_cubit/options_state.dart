part of 'options_cubit.dart';

@immutable
sealed class OptionsState {}

final class OptionsInitial extends OptionsState {}
final class ChooseOptionSuccess extends OptionsState {}
final class CounntScore extends OptionsState {}
final class ShowAllCorrectAnswers extends OptionsState {}
