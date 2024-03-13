class Password {
  final int id;
  final String date;
  final String category;
  final int passwordId;
  final String site;

  Password(
      {required this.category,
      required this.passwordId,
      required this.id,
      required this.site,
      required this.date});

  factory Password.fromJson(Map<String, dynamic> json) => Password(
      category: json['category'],
      passwordId: json['passwordId'],
      id: json['id'],
      date: json['date'],
      site: json['site']);
}

class PasswordList {
  final List<Password> password;
  PasswordList({required this.password});

  factory PasswordList.fromJson(List<dynamic> json) => PasswordList(
        password: json.map((item) => Password.fromJson(item)).toList(),
      );
}
