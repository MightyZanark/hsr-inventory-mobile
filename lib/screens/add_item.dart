import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hsr_inventory/widgets/drawer.dart';
import 'package:hsr_inventory/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class AddItemPage extends StatefulWidget {
  // change to 10.0.2.2 if on emulator
  static const String endpoint =
      'https://juan-maxwell-tugas.pbp.cs.ui.ac.id/add-flutter/';
  const AddItemPage({super.key});

  @override
  State<AddItemPage> createState() => _AddItemPageState();
}

class _AddItemPageState extends State<AddItemPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _desc = '';
  // String _category = '';
  int _amount = 0;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('Add Item')),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white),
        drawer: const AppDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Item name',
                        labelText: 'Item name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onChanged: (String? val) {
                      setState(() {
                        _name = val!;
                      });
                    },
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return 'Name cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Item amount',
                        labelText: 'Amount',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onChanged: (String? val) {
                      setState(() {
                        _amount = int.parse(val!);
                      });
                    },
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return 'Amount cannot be empty!';
                      }
                      if (int.tryParse(val) == null) {
                        return 'Amount has to be an integer!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Item description',
                        labelText: 'Description',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5))),
                    onChanged: (String? val) {
                      setState(() {
                        _desc = val!;
                      });
                    },
                    validator: (String? val) {
                      if (val == null || val.isEmpty) {
                        return 'Description cannot be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                // TODO: Find out how to do dropdown options
                // Padding(
                //   padding: const EdgeInsets.all(8),
                //   child: TextFormField(
                //     decoration: InputDecoration(
                //         hintText: 'Item category',
                //         labelText: 'Category',
                //         border: OutlineInputBorder(
                //             borderRadius: BorderRadius.circular(5))),
                //     onChanged: (String? val) {
                //       setState(() {
                //         _category = val!;
                //       });
                //     },
                //     validator: (String? val) {
                //       if (val == null || val.isEmpty) {
                //         return 'Category cannot be empty!';
                //       }
                //       return null;
                //     },
                //   ),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            final resp = await request.postJson(
                                AddItemPage.endpoint,
                                jsonEncode(<String, String>{
                                  'name': _name,
                                  'amount': _amount.toString(),
                                  'description': _desc
                                }));
                            if (resp['status']) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Successfully added new item!')));
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          'Something went wrong, please try again.')));
                            }
                            _formKey.currentState!.reset();
                          }
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
