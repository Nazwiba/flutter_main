import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView4(),
  ));
}

class ListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("ListView Seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text("My Contacts"),
            );
          },
          separatorBuilder: (context, index) {
            // in between we want to add so used this
            if (index % 3 == 0) { // custumized divider
              return const Divider(
                thickness: 5,
                color: Colors.green,
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: 10),
    );
  }
}
