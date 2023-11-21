import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hsr_inventory/screens/add_item.dart';
import 'package:hsr_inventory/screens/login.dart';
import 'package:hsr_inventory/screens/view_item.dart';
import 'package:hsr_inventory/models/item.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class MenuItem {
  final String title;
  final IconData icon;

  MenuItem(this.title, this.icon);
}

class MenuCard extends StatelessWidget {
  final MenuItem menu;

  MenuCard(this.menu, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Material(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        child: InkWell(
          onTap: () async {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                  content:
                      Text('You have pressed the "${menu.title}" button!')));

            if (menu.title == 'Add Item') {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddItemPage()));
            }

            if (menu.title == 'See Items') {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ViewItemPage()));
            }

            if (menu.title == 'Logout') {
              final resp =
                  await request.logout('http://127.0.0.1:8000/auth/logout/');
              String msg = resp['message'];
              if (resp['status']) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Logout successful!')));
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              } else {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(msg)));
              }
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
