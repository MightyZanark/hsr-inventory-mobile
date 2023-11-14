import 'package:flutter/material.dart';
import 'package:hsr_inventory/widgets/menu_card.dart';

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
