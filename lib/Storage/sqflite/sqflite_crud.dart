// // ignore_for_file: unnecessary_null_comparison, use_key_in_widget_constructors, use_build_context_synchronously

// import 'package:flutter/material.dart';
// import 'package:flutter_main/Storage/sqflite/dboperation.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: SqfLiteCrud(),
//   ));
// }

// class SqfLiteCrud extends StatefulWidget {
//   @override
//   State<SqfLiteCrud> createState() => _SqfLiteCrudState();
// }

// class _SqfLiteCrudState extends State<SqfLiteCrud> {
//   final nameCtrl = TextEditingController();
//   final phnCtrl = TextEditingController();
//   var isloading = true;
//   List<Map<String, dynamic>> contacts = []; // to store data retreived from db
//   @override
//   void initState() {
//     loadData();
//     super.initState();
//   }

//   void loadData() async {
//     final data = await SQLHelper.readData();
//     setState(() {
//       contacts = data;
//       isloading = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: const Text(
//           "CONTACTS",
//           style: TextStyle(fontSize: 25, color: Colors.black),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         backgroundColor: const Color.fromARGB(255, 233, 230, 230),
//         onPressed: () => showsheet(null),
//         child: const Icon(
//           Icons.add,
//           color: Colors.black,
//         ),
//       ),
//       body: isloading
//           ? const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Center(
//                   child: Text(
//                 "No Data",
//                 style: TextStyle(fontSize: 20),
//               )),
//             )
//           : ListView.builder(
//               itemCount: contacts.length,
//               itemBuilder: (context, index) {
//                 return Card(
//                   child: ListTile(
//                     title: Text(contacts[index]["name"]),
//                     subtitle: Text(contacts[index]["phone"]),
//                     trailing: Wrap(
//                       children: [
//                         IconButton(
//                             onPressed: () {
//                               showsheet(contacts[index]["id"]);
//                             },
//                             icon: const Icon(Icons.edit)),
//                         IconButton(
//                             onPressed: () {
//                               deletecontact(contacts[index]["id"]);
//                             },
//                             icon: const Icon(Icons.delete)),
//                       ],
//                     ),
//                   ),
//                 );
//               }),
//     );
//   }

//   showsheet(int? id) {
//     if (id != null) // to update contact
//     {
//       var selectedContact =
//           contacts.firstWhere((element) => element["id"] == id);
//       nameCtrl.text = selectedContact["name"];
//       phnCtrl.text = selectedContact["phone"];
//     }
//     showModalBottomSheet(
//         elevation: 5,
//         isScrollControlled: true,
//         context: context,
//         builder: (context) {
//           return Container(
//             padding: EdgeInsets.only(
//                 top: 15,
//                 left: 15,
//                 right: 15,
//                 bottom: MediaQuery.of(context).viewInsets.bottom + 50
//                 //adjust the size of textfield according to the size of the keyboard
//                 ),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: nameCtrl,
//                     decoration: const InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black)),
//                         border: OutlineInputBorder(),
//                         hintText: "Name"),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: TextField(
//                     controller: phnCtrl,
//                     decoration: const InputDecoration(
//                         focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.black)),
//                         border: OutlineInputBorder(),
//                         hintText: "Phone Number"),
//                   ),
//                 ),
//                 ElevatedButton(
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.white),
//                     ),
//                     onPressed: () async {
//                       if (id == null) {
//                         await createcontact();
//                       } else if (id != null) {
//                         await updatecontact(id);
//                       }
//                     },
//                     child: Text(
//                       id == null ? "Create Contact" : "Update Contact",
//                       style: const TextStyle(color: Colors.black),
//                     ))
//               ],
//             ),
//           );
//         });
//   }

//   Future<void> createcontact() async {
//     await SQLHelper.createContact(nameCtrl.text, phnCtrl.text);
//     nameCtrl.text = "";
//     phnCtrl.text = "";
//     Navigator.pop(context);
//     loadData();
//   }

//   Future<void> updatecontact(int id) async {
//     await SQLHelper.updateContact(id, nameCtrl.text, phnCtrl.text);
//     nameCtrl.text = "";
//     phnCtrl.text = "";
//     Navigator.pop(context);
//     loadData();
//   }

//   Future<void> deletecontact(int id) async {
//     await SQLHelper.deleteContact(id);
//     loadData();
//   }
// }
import 'package:flutter/material.dart';

import 'dboperation.dart';

void main() {
  runApp(MaterialApp(
    home: SqfliteCrud(),
  ));
}

class SqfliteCrud extends StatefulWidget {
  @override
  State<SqfliteCrud> createState() => _SqfliteCrudState();
}

class _SqfliteCrudState extends State<SqfliteCrud> {
  final name_controller = TextEditingController();
  final phone_controller = TextEditingController();

  var isloading = true; // intially ui is in loading state
  List<Map<String, dynamic>> contacts =
  []; // empty list for storing data from db

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    //read data from db
    final data = await SQLHelper.readData();
    setState(() {
      contacts = data;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      floatingActionButton:
      //here null means create contact id is null
      FloatingActionButton(
          onPressed: () => showSheet(null), child: const Icon(Icons.add)),
      body: isloading
          ? const Center(
        child: Text("NO Data"),
      )
          : ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(contacts[index]["name"]),
                subtitle: Text(contacts[index]['phone']),
                trailing: Wrap(
                  children: [
                    IconButton(
                        onPressed: () {
                          showSheet(contacts[index]['id']);
                        },
                        icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          deleteContact(contacts[index]['id']);
                        },
                        icon: Icon(Icons.delete)),
                  ],
                ),
              ),
            );
          }),
    );
  }

  void showSheet(int? id) {
    if (id != null) {
      //element['id']  = id from database
      //firstWhere - first element from contacts that satisfy this condition - element['id'] == id
      final data_from_that_id =
      contacts.firstWhere((element) => element['id'] == id);
      name_controller.text = data_from_that_id['name'];
      phone_controller.text = data_from_that_id['phone'];
    }
    showModalBottomSheet(
        elevation: 5,
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(
                top: 15,
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom + 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: name_controller,
                  decoration: InputDecoration(hintText: "Name"),
                ),
                TextField(
                  controller: phone_controller,
                  decoration: InputDecoration(hintText: "Phone Number"),
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (id == null) {
                        await createContact();
                      }
                      if (id != null) {
                        await updateContact(id);
                      }
                      Navigator.of(context).pop();
                      name_controller.text = "";
                      phone_controller.text = "";
                    },
                    child:
                    Text(id == null ? "Create Contact" : "Update Contact"))
              ],
            ),
          );
        });
  }

  Future<void> createContact() async {
    await SQLHelper.create_contact(name_controller.text, phone_controller.text);
    loadData(); // to refresh ui whenever we add a new contact
  }

  Future<void> updateContact(int? id) async {
    await SQLHelper.updateContact(
        id, name_controller.text, phone_controller.text);
    loadData();
  }

  void deleteContact(int? id) async {
    await SQLHelper.deleteData(id);
    loadData(); // refresh ui
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content:
    Text("Successfully Deleted")));
  }
}
