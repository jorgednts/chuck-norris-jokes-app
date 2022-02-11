class ChuckCategoryModel {
  final String title;

  ChuckCategoryModel({
    required this.title,
  });

  factory ChuckCategoryModel.fromJson(json) {
    return ChuckCategoryModel(title: json ?? '');
  }

  static List<ChuckCategoryModel> fromJsonList(List<dynamic>? json) =>
      json?.map((i) => ChuckCategoryModel.fromJson(i)).toList() ?? [];
}
