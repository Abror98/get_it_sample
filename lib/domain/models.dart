// To parse this JSON data, do
//
//     final meme = memeFromJson(jsonString);

import 'dart:convert';

// Meme memeFromJson(String str) => Meme.fromJson(json.decode(str));
//
// String memeToJson(Meme data) => json.encode(data.toJson());

class Meme {
  Meme({
    this.id,
    this.image,
    this.caption,
    this.category,
  });

  int id;
  String image;
  String caption;
  String category;

  factory Meme.fromJson(Map<String, dynamic> json) => Meme(
    id: json["id"],
    image: json["image"],
    caption: json["caption"],
    category: json["category"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image": image,
    "caption": caption,
    "category": category,
  };
}
