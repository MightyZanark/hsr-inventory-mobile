import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Item {
  final String name;
  final String description;
  final String category;
  final int amount;

  const Item(
      {required this.name,
      required this.description,
      required this.category,
      required this.amount});

  factory Item.fromJSON(Map<String, dynamic> json) {
    return Item(
        name: json['fields']['name'],
        description: json['fields']['description'],
        category: json['fields']['category'],
        amount: json['fields']['amount']);
  }
}

Future<Item> fetchItem() async {
  final response = await http.get(Uri.parse(""));

  if (response.statusCode == 200) {
    return Item.fromJSON(jsonDecode(response.body));
  } else {
    throw Exception("Failed to fetch item list");
  }
}
