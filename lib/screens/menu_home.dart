//widgets for material design
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Furniture.dart';
import 'package:gridview_menu/gridview_menu.dart';
//The database
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/screens/home_widget.dart';
import 'package:flutter_project/screens/housing.dart';
import 'package:flutter_project/screens/select_city.dart';
import 'package:flutter_project/screens/clothes.dart';
import 'package:flutter_project/screens/groceries.dart';
import 'package:flutter_project/screens/events.dart';

class MenuHome extends StatefulWidget {
  final Color color = const Color.fromRGBO(
      103, 134, 183, 1); // Color.fromRGBO(230, 121, 59, 1);
  //static const IconData homeWorkRounded = IconData(0xf7f6, fontFamily: 'MaterialIcons');

  const MenuHome({super.key});
  @override
  _MenuHomeState createState() => _MenuHomeState();
}

class _MenuHomeState extends State<MenuHome> {
  @override
  Widget build(BuildContext context) {
    List<MenuItem> menuItem = <MenuItem>[
      MenuItem(
        icon: Icons.home_work_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Housing',
        child: const Housing(),
        disabled: false,
      ),
      MenuItem(
        icon: Icons.bedroom_parent_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Furniture',
        child: const Furniture(),
        disabled: false,
      ),
      MenuItem(
        icon: Icons.local_grocery_store_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Grocery',
        child: const Groceries(),
        disabled: false,
      ),
      MenuItem(
        icon: Icons.store_mall_directory_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Clothes',
        child: const Clothes(),
        disabled: false,
      ),
      MenuItem(
        icon: Icons.calendar_month_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Events',
        child: const Events(),
        disabled: false,
      ),
      MenuItem(
        icon: Icons.dashboard_customize_rounded,
        color: widget.color,
        subtitle: '',
        title: 'Board',
        child: const SelectCity(),
        disabled: false,
      ),
    ];
    return HomeWidget(
      menuItem: menuItem,
    );
  }
}
