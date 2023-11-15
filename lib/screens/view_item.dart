import 'package:flutter/material.dart';
import 'package:hsr_inventory/widgets/drawer.dart';
import 'package:hsr_inventory/widgets/item.dart';

class ViewItemPage extends StatelessWidget {
  final List<Item> items;
  const ViewItemPage(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('Item List')),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white),
        drawer: AppDrawer(items),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
                children: items.map((Item item) {
              return ItemCard(item);
            }).toList()),
          ),
        ));
  }
}

// class ViewItemPage extends StatefulWidget {
//   const ViewItemPage({super.key});

//   @override
//   State<ViewItemPage> createState() => _ViewItemPageState();
// }

// class _ViewItemPageState extends State<ViewItemPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: const Center(child: Text('Item List')),
//             backgroundColor: Colors.amber,
//             foregroundColor: Colors.white),
//         drawer: const AppDrawer(),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(

//             ),
//           ),
//         ));
//   }
// }
