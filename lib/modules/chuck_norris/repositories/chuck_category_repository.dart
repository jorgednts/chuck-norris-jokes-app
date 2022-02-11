import 'package:dio/dio.dart';
import '../models/chuck_category_model.dart';
import '../../../common/consts/base_consts.dart' as consts;

class ChuckCategoryRepository{
  final Dio _dio = Dio();

  Future <List<ChuckCategoryModel>> fetchChuckCategoryData() async{
    final response = await _dio.get("${consts.urlBase}jokes/categories");
    return ChuckCategoryModel.fromJsonList(response.data);
  }
 }