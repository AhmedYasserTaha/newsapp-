import 'package:news_app/data/api/character_service.dart';
import 'package:news_app/data/model/character/character.dart';

class CharacterRepo {
  final CharacterService characterService;

  CharacterRepo({required this.characterService});

  Future<List<Character>> getAllCharecter() async {
    final characters = await characterService.getAllCharecter();

    return characters.map<Character>((json) {
      return Character.fromJson(json);
    }).toList();
  }
}
