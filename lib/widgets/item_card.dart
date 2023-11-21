import 'package:flutter/material.dart';
import 'package:hsr_inventory/models/item.dart';
import 'package:hsr_inventory/screens/item_detail.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
          color: Colors.blue,
          child: InkWell(
              // padding: const EdgeInsets.all(8),
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
                  // Text('Amount: ${item.amount}',
                  //     textAlign: TextAlign.center,
                  //     style: const TextStyle(fontSize: 14, color: Colors.white)),
                  // Text(item.description,
                  //     textAlign: TextAlign.center,
                  //     style: const TextStyle(
                  //         fontSize: 16,
                  //         fontStyle: FontStyle.italic,
                  //         color: Colors.white))
                ],
              )),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ItemDetail(item)));
              })),
    );
  }
}
