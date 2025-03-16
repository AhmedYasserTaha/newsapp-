import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:news_app/data/model/character/character.dart';
import 'package:news_app/data/repo/character_repo.dart';

part 'character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepo characterRepo;
  late List<Character> characters;
  CharacterCubit(
    this.characterRepo,
  ) : super(CharacterInitial());

  List<Character> getAllCharecter() {
    characterRepo.getAllCharecter().then(
      (characters) {
        emit(
          CharacterSuccess(
            characters: characters,
          ),
        );
        this.characters = characters;
      },
    );
    return characters;
  }
}
