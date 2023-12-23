import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Ex(),
  ));
}

class Ex extends StatefulWidget {
  @override
  State<Ex> createState() => _ExState();
}

class _ExState extends State<Ex> {
  var bg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bg = Colors.red;
                    });
                  },
                  child: Text("red")),
                  SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      bg = Colors.blue;
                    });
                  },
                  child: Text("Blue"))
            ],
          ),
      ),
    
    );
  }
}
