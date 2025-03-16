part of 'character_cubit.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}

final class CharacterSuccess extends CharacterState {
  final List<Character> characters;

  CharacterSuccess({required this.characters});
}

final class CharacterLoading extends CharacterState {}

final class CharacterFaulier extends CharacterState {
  final String errMessage;

  CharacterFaulier({required this.errMessage});
}
