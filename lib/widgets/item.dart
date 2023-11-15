import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Item {
  final String name;
  final String description;
  final String category;
  final int amount;

  const Item(this.name, this.description, this.category, this.amount);

  factory Item.fromJSON(Map<String, dynamic> json) {
    return Item(json['fields']['name'], json['fields']['description'],
        json['fields']['category'], json['fields']['amount']);
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
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text('Amount: ${item.amount}',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                Text(item.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic))
              ],
            ))));
  }
}
