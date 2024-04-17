import 'package:flutter/material.dart';
import 'package:gridview_menu/gridview_menu.dart';
//For the authentication page
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
//To use google fonts
//import 'package:google_fonts/google_fonts.dart';
//To set the different routes for out project
import 'package:flutter_project/route/route.dart' as route;

class HomeWidget extends StatefulWidget {
  final List<MenuItem>? menuItem;
  const HomeWidget({Key? key, @required this.menuItem}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  bool _showList = false; // False shows a grid view or List view if its true

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "@ttune",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 36,
                    fontWeight: FontWeight.w500),
              ),
              SignOutButton(),
            ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(_showList ? Icons.grid_on : Icons.grid_off),
            onPressed: () {
              if (mounted) {
                setState(() {
                  _showList = !_showList;
                });
              }
            },
          ),
        ],
      ),
      body: MobileSidebar(
        breakPoint: 3000,
        items: widget.menuItem!,
        showList: _showList,
      ),
      /*the bottomNavigationBar help us to stablish in which screen will be set up. For this case it would 
      be the Index 0 -> Home. 
      The other options that user can pressed are 'Select City' */
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city_rounded),
              label: 'Select City',
            ),
            /*  BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'About Us',
            ),*/
          ],
          onTap: (int index) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, route.menuHome);
                break;
              case 1:
                Navigator.pushNamed(context, route.selectCity);
                break;
              /*case 2:
                Navigator.pushNamed(context, route.aboutUs);
                break;*/
            }
          }),
    );
  }
}
