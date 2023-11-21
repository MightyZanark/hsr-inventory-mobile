import 'package:flutter/material.dart';
import 'package:hsr_inventory/screens/menu.dart';
import 'package:hsr_inventory/screens/add_item.dart';
import 'package:hsr_inventory/screens/view_item.dart';
import 'package:hsr_inventory/models/item.dart';

class AppDrawer extends StatelessWidget {
  final List<Item> items;
  const AppDrawer(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      const DrawerHeader(
        decoration: BoxDecoration(color: Colors.amber),
        child: Column(
          children: [
            Text('HSR Inventory',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            Padding(padding: EdgeInsets.all(10)),
            Text('Keep track of your materials!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.white))
          ],
        ),
      ),
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
      ListTile(
        leading: const Icon(Icons.add_box_outlined),
        title: const Text('Add Items'),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddItemPage(items)));
        },
      ),
      ListTile(
        leading: const Icon(Icons.view_agenda_outlined),
        title: const Text('View Items'),
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ViewItemPage(items)));
        },
      )
    ]));
  }
}
