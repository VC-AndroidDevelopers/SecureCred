class Categories {
  final int id;
  final String title;

  Categories({required this.id, required this.title});

  factory Categories.fromJson(Map<String, dynamic> json) =>
      Categories(title: json['title'], id: json['id']);
}

class CategoriesList {
  final List<Categories> categories;

  CategoriesList({required this.categories});

  factory CategoriesList.fromJson(List<dynamic> json) => CategoriesList(
        categories: json.map((item) => Categories.fromJson(item)).toList(),
      );
}
