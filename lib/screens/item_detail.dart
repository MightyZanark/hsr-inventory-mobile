import 'package:flutter/material.dart';
import 'package:hsr_inventory/models/item.dart';

class ItemDetail extends StatelessWidget {
  final Item item;
  const ItemDetail(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('${item.name} Detail Page')),
        body: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name:\t${item.name}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Text('Amount:\t${item.amount}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('Category:\t${item.category}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 12),
                  Text('Description:\n${item.description}',
                      style: const TextStyle(fontSize: 16)),
                  const SizedBox(height: 24),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Back'))
                ])));
  }
}
