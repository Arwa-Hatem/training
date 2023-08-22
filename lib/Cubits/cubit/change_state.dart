part of 'change_cubit.dart';

@immutable
sealed class ChangeState {}

final class ChangeInitial extends ChangeState {}

final class Showtext extends ChangeState {}

final class Showimage extends ChangeState {}

final class Showcircle extends ChangeState {}
