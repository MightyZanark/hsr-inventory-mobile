import 'package:flutter/material.dart';
import 'package:hsr_inventory/widgets/drawer.dart';
import 'package:hsr_inventory/widgets/item.dart';

class AddItemPage extends StatefulWidget {
  final List<Item> items;
  const AddItemPage(this.items, {super.key});

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
    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text('Add Item')),
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white),
        drawer: AppDrawer(widget.items),
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
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            widget.items.add(Item(_name, _desc, "", _amount));
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title:
                                        const Text('Successfully added item'),
                                    content: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Name: $_name'),
                                          Text('Amount: $_amount'),
                                          Text('Description: $_desc')
                                        ],
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        child: const Text('OK'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      )
                                    ],
                                  );
                                });
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
