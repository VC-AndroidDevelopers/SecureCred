class NotificationCard {
  final String title;
  final String description;
  final int id;
  final String color;

  NotificationCard(
      {required this.title,
      required this.description,
      required this.id,
      required this.color});

  factory NotificationCard.fromJson(Map<String, dynamic> json) =>
      NotificationCard(
          title: json['title'],
          description: json['description'],
          id: json['id'],
          color: json['color']);
}

class NotificationCardList {
  final List<NotificationCard> notification;

  NotificationCardList({required this.notification});

  factory NotificationCardList.fromJson(List<dynamic> json) =>
      NotificationCardList(
        notification:
            json.map((item) => NotificationCard.fromJson(item)).toList(),
      );
}
