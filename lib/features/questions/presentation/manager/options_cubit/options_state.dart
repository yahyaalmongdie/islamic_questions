part of 'options_cubit.dart';

@immutable
sealed class OptionsState {}

final class OptionsInitial extends OptionsState {}
final class ChooseOptionSuccess extends OptionsState {}
