import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'category': category,
      'amount': amount
    };
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

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('Amount: ${item.amount}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, color: Colors.white)),
                Text(item.description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Colors.white))
              ],
            ))));
  }
}
