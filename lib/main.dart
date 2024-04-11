import 'package:flutter/material.dart';
import 'package:flutter_project/route/route.dart' as route;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      /*theme: ThemeData(
        textTheme: GoogleFonts.glutenTextTheme(
          Theme.of(context).textTheme,
        ),
      ),*/
      /*theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.lobsterTextTheme(Theme.of(context).textTheme),
      ),*/
      onGenerateRoute: route.controller,
      initialRoute: route.authGate,
      /*home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(103, 134, 183, 1),
            //gradient: RadialGradient.
          ),
        ),
      ),*/
    );
  }
  /*Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.authGate,
    );
  }*/
}
