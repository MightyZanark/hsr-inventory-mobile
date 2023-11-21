import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hsr_inventory/widgets/drawer.dart';
import 'package:hsr_inventory/models/item.dart';
import 'package:hsr_inventory/widgets/item_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

// class ViewItemPage extends StatelessWidget {
//   final List<Item> items;
//   const ViewItemPage(this.items, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             title: const Center(child: Text('Item List')),
//             backgroundColor: Colors.amber,
//             foregroundColor: Colors.white),
//         drawer: AppDrawer(items),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//                 children: items.map((Item item) {
//               return ItemCard(item);
//             }).toList()),
//           ),
//         ));
//   }
// }

class ViewItemPage extends StatefulWidget {
  const ViewItemPage({super.key});

  @override
  State<ViewItemPage> createState() => _ViewItemPageState();
}

class _ViewItemPageState extends State<ViewItemPage> {
  Future<List<Item>> fetchItem(CookieRequest request) async {
    final response = await request
        .get("https://juan-maxwell-tugas.pbp.cs.ui.ac.id/get-item-flutter/");

    if (response['status']) {
      final data = jsonDecode(response['data']);
      List<Item> items = [];
      for (var item in data) {
        items.add(Item.fromJSON(item));
      }
      return items;
    } else {
      throw Exception("Failed to fetch item list");
    }
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
        appBar: AppBar(title: const Text('Item List')),
        drawer: const AppDrawer(),
        body: FutureBuilder(
            future: fetchItem(request),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData || snapshot.data.isEmpty) {
                  return const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(children: [
                      Text('You have not stored any item.',
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      SizedBox(height: 8)
                    ]),
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, idx) => ItemCard(snapshot.data![idx]));
                  // return ListView.builder(
                  //     itemCount: snapshot.data!.length,
                  //     itemBuilder: (_, index) => Container(
                  //         margin: const EdgeInsets.symmetric(
                  //             horizontal: 16, vertical: 12),
                  //         padding: const EdgeInsets.all(20),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.start,
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           children: [
                  //             Text('${snapshot.data![index].name}',
                  //                 style: const TextStyle(
                  //                     fontSize: 18,
                  //                     fontWeight: FontWeight.bold)),
                  //             const SizedBox(height: 10),
                  //             Text('Amount: ${snapshot.data![index].amount}'),
                  //             const SizedBox(height: 10),
                  //             Text('${snapshot.data![index].description}')
                  //           ],
                  //         )));
                }
              }
            }));
  }
}
