class ChuckJokeModel {
  final String id;
  final String iconUrl;
  final String url;
  final String joke;

  ChuckJokeModel(
      {required this.id,
      required this.iconUrl,
      required this.url,
      required this.joke});

  factory ChuckJokeModel.fromJson(json) {
    return ChuckJokeModel(
        id: json['id'] ?? '',
        iconUrl: json['icon_url'] ?? '',
        url: json['url'] ?? '',
        joke: json['value'] ?? '');
  }

  Map toJson() {
    final data = {};
    data['icon_url'] = iconUrl;
    data['id'] = id;
    data['url'] = url;
    data['value'] = joke;

    return data;
}
}
