import 'package:chuck_norris_app/common/errors.dart';
import 'package:dio/dio.dart';
import 'package:chuck_norris_app/common/errors.dart';
import '../models/chuck_joke_model.dart';
import '../../../common/consts/base_consts.dart' as consts;

class ChuckJokeRepository{
  final Dio _dio = Dio ();

  Future <ChuckJokeModel> fetchChuckJokeData(
      {required String category}) async{
    try{
      final response =
          await _dio.get("${consts.urlBase}jokes/random?category=$category");
      return ChuckJokeModel.fromJson(response.data);
    } on DioError catch(e){
      throw HttpClientError(message: e.message, statusCode: e.response?.statusCode??500);
    }
    catch (e){
      throw RepositoryFailure(message: e.toString());
    }

  }
}