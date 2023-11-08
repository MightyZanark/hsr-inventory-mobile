import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<MenuItem> menus = [
    MenuItem("See Items", Icons.inventory),
    MenuItem("Add Item", Icons.add_box),
    MenuItem("Logout", Icons.logout)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("HSR Inventory"),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text("HSR Inventory",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: menus.map((MenuItem item) {
                    return MenuCard(item);
                  }).toList(),
                )
              ],
            ),
          ),
        ));
  }
}

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
