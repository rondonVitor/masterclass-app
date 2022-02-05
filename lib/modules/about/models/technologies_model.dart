import 'dart:convert';

class Technologies {
  final String title;
  final String image;

  Technologies({
    required this.title,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'image': image,
    };
  }

  factory Technologies.fromMap(Map<String, dynamic> map) {
    return Technologies(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  static Technologies fromJson(dynamic json) {
    return Technologies(title: json['title'], image: json['image']);
  }
}
