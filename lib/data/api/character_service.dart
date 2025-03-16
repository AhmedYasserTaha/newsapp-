import 'package:dio/dio.dart';
import 'package:news_app/data/api/api.dart';

class CharacterService {
  late Dio dio;
  CharacterService({BaseOptions? options}) {
    dio = Dio(
      options ??
          BaseOptions(
            baseUrl: basUrl,
            receiveDataWhenStatusError: true,
            connectTimeout: Duration(seconds: 15),
            receiveTimeout: Duration(seconds: 15),
          ),
    );
  }

  Future<List<dynamic>> getAllCharecter() async {
    try {
      Response response = await dio.get("character");
      print(response.data.toString());
      return response.data;
    } on Exception catch (e) {
      print(e.toString());
      return [];
    }
  }
}
