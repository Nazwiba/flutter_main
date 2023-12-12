import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: SliversEg(),
  ));
}

class SliversEg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: const Text("Sliver Example"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt_outlined),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  10,
                  (index) => const ListTile(
                        leading: CircleAvatar(child: Icon(Icons.person),),
                        title: Text("Alvin"),
                        subtitle: Text("9547399195"),
                        trailing: Icon(Icons.phone),
                      ))))
        ],
      ),
    );
  }
}
