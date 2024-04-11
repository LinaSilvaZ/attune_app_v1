//widgets for material design
import 'package:flutter/material.dart';
import 'package:gridview_menu/gridview_menu.dart';
//The database
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/screens/home_widget.dart';
import 'package:flutter_project/screens/housing.dart';

class MenuHome extends StatefulWidget {
  final Color color = const Color.fromRGBO(
      103, 134, 183, 1); // Color.fromRGBO(230, 121, 59, 1);
  //static const IconData homeWorkRounded = IconData(0xf7f6, fontFamily: 'MaterialIcons');

  const MenuHome({super.key});
  @override
  //_MenuHomeState createState() => _MenuHomeState();
  State<MenuHome> createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    List<MenuItem> menuItem = <MenuItem>[
      MenuItem(
        icon: Icons.home_work_rounded,
        color: widget.color,
        subtitle: 'Housi',
        title: 'Housing',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.bedroom_parent_rounded,
        color: widget.color,
        subtitle: 'Furnitu',
        title: 'Furniture',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.local_grocery_store_rounded,
        color: widget.color,
        subtitle: 'Groce',
        title: 'Grocery',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.store_mall_directory_rounded,
        color: widget.color,
        subtitle: 'Cloth',
        title: 'Clothes',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.calendar_month_rounded,
        color: widget.color,
        subtitle: 'Events',
        title: 'Events',
        child: const Housing(),
        disabled: true,
      ),
      MenuItem(
        icon: Icons.dashboard_customize_rounded,
        color: widget.color,
        subtitle: 'Boa',
        title: 'Board',
        child: const Housing(),
        disabled: true,
      ),
    ];

    return Scaffold(
      body: HomeWidget(
        menuItem: menuItem,
      ),
    );
  }
}
