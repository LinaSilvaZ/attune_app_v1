import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:drop_down_list_menu/drop_down_list_menu.dart';
import 'package:flutter_project/screens/menu_home.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
//To set the different routes for out project
import 'package:flutter_project/route/route.dart' as route;

class SelectCity extends StatelessWidget {
  const SelectCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade50,
        ),
        child: Column(
          children: [
            const DropDown(),
            AnimatedButtonDemo(),
          ],
        ),
      ),
    );
    /*    MaterialApp(
      title: 'Drop Down Cities',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const DropDown(), //AnimatedButtonDemo(),
    );*/
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  _DropDownCities createState() => _DropDownCities();
}

class _DropDownCities extends State<DropDown> {
  final List<String> _list = [
    'Select City',
    'Calgary',
    'Edmonton',
    'Red Deer',
    'Lethbridge',
    'Airdrie'
  ];
  String _selectedCity = 'Select City';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(103, 134, 183, 1),
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Cities",
                style: TextStyle(
                    color: Colors.white70,
                    fontSize: 36,
                    fontWeight: FontWeight.w500),
              ),
              SignOutButton(),
            ]),
      ),
      /*appBar: AppBar(
          title: const Text('Drop Down Cities Menu'),
        ),*/
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: DropDownMenu(
                    title: 'Attuned Cities',
                    enabled: true,
                    values: _list,
                    value: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}

class AnimatedButtonDemo extends StatefulWidget {
  @override
  _AnimatedButtonDemoState createState() => _AnimatedButtonDemoState();
}

class _AnimatedButtonDemoState extends State<AnimatedButtonDemo> {
  bool isButtonSelected = false;

  @override
  Widget build(BuildContext context) {
    var submitTextStyle = const TextStyle(
        fontSize: 28,
        letterSpacing: 5,
        color: Colors.white,
        fontWeight: FontWeight.w300);
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            AnimatedButton(
              //animatedOn: AnimatedOn.onHover,
              onPress: () {},
              height: 70,
              width: 200,
              text: 'SUBMIT',
              gradient:
                  const LinearGradient(colors: [Colors.red, Colors.orange]),
              selectedGradientColor: const LinearGradient(
                  colors: [Colors.pinkAccent, Colors.purpleAccent]),
              isReverse: true,
              selectedTextColor: Colors.black,
              transitionType: TransitionType.LEFT_TO_RIGHT,
              textStyle: submitTextStyle,
              borderColor: Colors.white,
              borderWidth: 1,
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ),
    );
  }
}


/*      /*the bottomNavigationBar help us to stablish in which screen will be set up. For this case it would 
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
          }), */