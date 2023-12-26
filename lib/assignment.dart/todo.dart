import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("ToDo");
  runApp(MaterialApp(
    home: MyToDo(),
  ));
}

class MyToDo extends StatefulWidget {
  const MyToDo({super.key});

  @override
  State<MyToDo> createState() => _MyToDoState();
}

class _MyToDoState extends State<MyToDo> {
  List<Map<String, dynamic>> task = [];
  final nameCtrl = TextEditingController();
  final contentCtrl = TextEditingController();
  final todobox = Hive.box("ToDo");
  @override
  void initState() {
    readRefreshtask();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TODO"),),
    
    );
  }

  readRefreshtask() {
    final taskFromHive = todobox.keys.map((key) {
      final taskFromKey = todobox.get(key);
      return {
        "id": key,
        "name": taskFromKey["taskName"],
        "content": taskFromKey["taskContent"]
      };
    }).toList();
    setState(() {
      task = taskFromHive;
    });
  }
}
