import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:grouped_list/grouped_list.dart';

class Clothes extends StatefulWidget {
  const Clothes({super.key});

  @override
  State<Clothes> createState() => _ClothesState();
}

class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    List _elements = [
      {'name': 'Atmosphere', 'category': 'Well-known Brands'},
      {'name': 'Marks', 'category': 'Well-known Brands'},
      {'name': 'SportCheck', 'category': 'Well-known Brands'},
      {'name': 'Winners', 'category': 'Clearance Brands'},
      {'name': 'Marshalls', 'category': 'Clearance Brands'},
      {'name': 'Treasure Hunt', 'category': 'Clearance Brands'},
      {'name': 'Old Navy', 'category': 'Clearance Brands'},
      {'name': 'Value Village', 'category': 'Second Hand Stores'},
      {'name': 'Thrift Store', 'category': 'Second Hand Stores'}
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Clothes",
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
                leading: const Icon(Icons.contact_page),
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



/*class _ClothesState extends State<Clothes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Clothes",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 36,
                    fontWeight: FontWeight.w500),
              ),
              SignOutButton(),
            ]),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.cyan.shade50,
        ),
        child: const Column(
          children: [
            Text(
              "Store Categories: ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "New Collections: Atmosphere, Marks, Sport Check,  ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
*/