import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:grouped_list/grouped_list.dart';

class Groceries extends StatefulWidget {
  const Groceries({super.key});

  @override
  State<Groceries> createState() => _GroceriesState();
}

class _GroceriesState extends State<Groceries> {
  @override
  Widget build(BuildContext context) {
    List _elements = [
      {'name': 'Walmart', 'category': 'Hypermarkets'},
      {'name': 'Real Canadian Superstore', 'category': 'Hypermarkets'},
      {'name': 'FreshCo', 'category': 'Supermarkets'},
      {'name': 'Save On Foods', 'category': 'Supermarkets'},
      {'name': 'Sobeys', 'category': 'Supermarkets'},
      {'name': 'Co-op Food Store', 'category': 'Supermarkets'},
      {'name': 'Costco', 'category': 'Club Retail Stores'},
      {'name': 'Dollarama', 'category': 'Retail Chain'},
      {'name': 'Liquidation Store', 'category': 'Retail Chain'},
      {'name': 'Red Deer Food Bank', 'category': 'Food Bank'},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Groceries",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 36,
                    fontWeight: FontWeight.w500),
              ),
              SignOutButton(),
            ]),
      ),
      body: GroupedListView<dynamic, String>(
        elements: _elements,
        groupBy: (element) => element['category'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: SizedBox(
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                leading: const Icon(Icons.contact_page_rounded),
                title: Text(element['name']),
                trailing: const Icon(Icons.arrow_forward_rounded),
              ),
            ),
          );
        },
      ),
    );
  }
}
