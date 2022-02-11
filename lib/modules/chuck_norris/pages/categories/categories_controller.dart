import '../../models/chuck_category_model.dart';
import '../../repositories/chuck_category_repository.dart';

class CategoriesController {
  final _repository = ChuckCategoryRepository();

  Future<List<ChuckCategoryModel>> getJokesCategories() async {
    return await _repository
        .fetchChuckCategoryData()
        .onError((error, stackTrace) => throw Error());
  }
}
