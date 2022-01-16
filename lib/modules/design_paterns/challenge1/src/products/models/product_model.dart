import 'dart:convert';

class ProductModel {
  final String id;
  final String title;

  ProductModel({
    required this.id,
    required this.title,
  });

  ProductModel copyWith({
    String? id,
    String? title,
  }) {
    return ProductModel(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  static ProductModel fromJson(dynamic json) {
    return ProductModel(id: json['id'], title: json['title']);
  }
}
