import '../../models/chuck_joke_model.dart';
import '../../repositories/chuck_joke_repository.dart';

class JokeController{
  final _repository = ChuckJokeRepository();

  Future<ChuckJokeModel> getRandomJokeFromCategory(
      {required String category}) async {
    return await _repository.fetchChuckJokeData(category: category);
  }
}