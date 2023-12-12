import 'package:flutter/material.dart';
import 'package:flutter_main/passing_data_between_screens/dummydata.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tappedId = ModalRoute.of(context)?.settings.arguments;
    final product = products.firstWhere((e) => e["id"]== tappedId);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(product["Image"]),
            Text(product["Name"]),
            Text(product["Description"]),
            Text("${product["Price"]}"),
            
          ],
        ),
      ),
    );
  }
}
