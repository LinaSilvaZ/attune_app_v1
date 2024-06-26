import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:grouped_list/grouped_list.dart';

class Housing extends StatefulWidget {
  const Housing({super.key});

  @override
  State<Housing> createState() => _HousingState();
}

class _HousingState extends State<Housing> {
  @override
  Widget build(BuildContext context) {
    List _elements = [
      {'name': 'Richie Rich', 'category': 'Building Owners'},
      {'name': 'Donald Duck', 'category': 'Building Owners'},
      {'name': 'Scrooge McDuck', 'category': 'Building Owners'},
      {'name': 'Tony Stark', 'category': 'Rental Agent'},
      {'name': 'Bruce Wayne', 'category': 'Rental Agent'},
      {'name': 'Market Place', 'category': 'Websites'},
      {'name': 'Kijiji', 'category': 'Websites'},
      {'name': 'Market Place Homes', 'category': 'Websites'}
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Housing",
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
                leading: const Icon(Icons.contact_mail),
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
