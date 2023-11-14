import 'package:flutter/material.dart';
import 'package:hsr_inventory/screens/add_item.dart';
import 'dart:math';

class MenuItem {
  final String title;
  final IconData icon;

  MenuItem(this.title, this.icon);
}

class MenuCard extends StatelessWidget {
  final MenuItem menu;

  const MenuCard(this.menu, {super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content:
                      Text('You have pressed the "${menu.title}" button!')));

            if (menu.title == 'Add Item') {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddItemPage()));
            }
          },
          child: Container(
              padding: const EdgeInsets.all(8),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(menu.icon, color: Colors.white, size: 30),
                  const Padding(padding: EdgeInsets.all(3)),
                  Text(menu.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white))
                ],
              ))),
        ));
  }
}
