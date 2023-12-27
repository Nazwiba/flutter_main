import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("ToDo");
  runApp(const MaterialApp(
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
    readRefreshTask();
    super.initState();
  }

  readRefreshTask() {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO"),
      ),
      body: task.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.task),
                    title: Text(task[index]["name"]),
                    subtitle: Text(task[index]["content"]),
                    trailing: Wrap(
                      children: [
                        IconButton(
                            onPressed: () {
                              createEditTask(task[index]["id"]);
                            },
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {
                              deleteTask(task[index]["id"]);
                            },
                            icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          createEditTask(null);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void createEditTask(int? itemkey) {
    if (itemkey != null) {
      final selectedTask =
          task.firstWhere((element) => element["id"] == itemkey);
      nameCtrl.text = selectedTask["name"];
      contentCtrl.text = selectedTask["content"];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 15,
              bottom: MediaQuery.of(context).viewInsets.bottom + 50,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: nameCtrl,
                  decoration: const InputDecoration(hintText: "Task Name"),
                ),
                TextField(
                  controller: contentCtrl,
                  decoration: const InputDecoration(hintText: "Task Content"),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (itemkey == null) {
                        createTask({
                          "taskName": nameCtrl.text.trim(),
                          "taskContent": contentCtrl.text.trim(),
                        });
                      }
                      if (itemkey != null) {
                        editTask(itemkey, {
                          "taskName": nameCtrl.text.trim(),
                          "taskContent": contentCtrl.text.trim(),
                        });
                      }
                      nameCtrl.text = "";
                      contentCtrl.text = "";
                    },
                    child: Text(itemkey == null ? "Create Task" : "Edit Task"))
              ],
            ),
          );
        });
  }

  Future<void> createTask(Map<String, String> newtask) async {
    await todobox.add(newtask);
    readRefreshTask();
  }

  Future<void> editTask(int itemkey, Map<String, String> updatetask) async {
    await todobox.put(itemkey, updatetask);
    readRefreshTask();
  }

  Future<void> deleteTask(int itemkey) async {
    await todobox.delete(itemkey);
    readRefreshTask();
  }
}
