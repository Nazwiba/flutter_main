import 'package:flutter/material.dart';
import 'package:flutter_main/assignment.dart/Tourism%20App%20UI/dummydata.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final country = countries.firstWhere((e) => e["id"] == tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(country["Image"],),
            //Text(country["Country"]),
            //Text(country["Description"]),
            // Row(
            //   children: [
            //     Image.asset(country["Place to visit 1"]),
            //     Image.asset(country["Place to visit 2"]),
            //     Image.asset(country["Place to visit 3"]),
            //     Image.asset(country["Place to visit 4"]),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
