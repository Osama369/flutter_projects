import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/base/bottom_navbar.dart';
import 'package:flutter_application_1/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());

  // // turnary operator uses
  // int x = 19;
  // x == 10 ? print("im 18+") : print("im not 18+ ");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // we are here overriding build method
    return MaterialApp(
      // this is also a widget
      debugShowCheckedModeBanner: false,
      // use const with contructor

      routes: {
        "/": (context) => const BottomNavbar(),
        "/all_tickets": (context) => const AllTickets(),
      },
    );
  }
}
