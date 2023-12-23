import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import '../database/hive_db.dart';
import '../model/user_model.dart';
import 'hive_home.dart';
import 'hive_reg.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path); // init hive
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(GetMaterialApp(
    home: HiveLogin(),
  ));
}

class HiveLogin extends StatelessWidget {
  final emil_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: emil_ctrl,
              decoration: InputDecoration(hintText: "email"),
            ),
            TextField(
              controller: pwd_ctrl,
              decoration: InputDecoration(hintText: "password"),
            ),
            ElevatedButton(
                onPressed: () async {
                  final regUserList = await HiveDb.instance.getUser();
                  validate_login(regUserList);
                },
                child: Text("login")),
            TextButton(
                onPressed: () {
                  Get.to(Hive_reg());
                },
                child: Text("Didn't have an account,Register here.."))
          ],
        ),
      ),
    );
  }

  Future<void> validate_login(List<User> regUserList) async {
    final eemail = emil_ctrl.text.trim();
    final epwd = pwd_ctrl.text.trim();
    bool userFound = false;
    if (eemail != '' && epwd != '') {
      await Future.forEach(regUserList, (user) {
        //to check email already existing
        if (user.email == eemail && user.password == epwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });

      if (userFound == true) {
        Get.snackbar("Success", "Login success", colorText: Colors.green);
        Get.to(HiveHome());
      } else {
        Get.snackbar(
          "Error",
          "No user found",
          colorText: Colors.red,
        );
      }
    } else {
      Get.snackbar("Error", "Fields must not be empty", colorText: Colors.red);
    }
  }
}




// // ignore_for_file: unused_local_variable

// import 'package:flutter/material.dart';
// import 'package:flutter_main/Storage/hive/hive2/database/hive_db.dart';
// import 'package:flutter_main/Storage/hive/hive2/model/user_model.dart';
// import 'package:flutter_main/Storage/hive/hive2/view/hive_home.dart';
// import 'package:flutter_main/Storage/hive/hive2/view/hive_reg.dart';
// import 'package:get/get.dart';
// import 'package:path_provider/path_provider.dart' as path_provider;
// import 'package:hive_flutter/adapters.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final dbDir = await path_provider.getApplicationDocumentsDirectory();
//   await Hive.initFlutter(dbDir.path);
//   Hive.registerAdapter(UserAdapter());
//   await Hive.openBox<User>("UserData");
//   runApp(GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: HiveLogin(),
//   ));
// }

// class HiveLogin extends StatelessWidget {
//   final emailCtrl = TextEditingController();
//   final pwdCtrl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Login Page"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             controller: emailCtrl,
//             decoration: const InputDecoration(hintText: "Username"),
//           ),
//           TextField(
//             controller: pwdCtrl,
//             decoration: const InputDecoration(hintText: "Password"),
//           ),
//           ElevatedButton(
//               onPressed: () async {
//                 final regUserList = await HiveDb.instance.getUser();
//                 validateLogin(regUserList);
//               },
//               child: const Text("Login")),
//           TextButton(
//               onPressed: () {
//                 Get.to(HiveReg());
//               },
//               child: const Text("Don't have Account? Register Here.."))
//         ],
//       ),
//     );
//   }

//   void validateLogin(List<User> regUserList) async {
//     final eemail = emailCtrl.text.trim();
//     final epwd = pwdCtrl.text.trim();
//     bool userFound = false;
//     if (eemail != "" && epwd != "") {
//       await Future.forEach(regUserList, (user) {
//         // to check  email already existing
//         if (user.email == eemail && user.password == epwd) {
//           userFound = true;
//         } else {
//           userFound = false;
//         }
//       });
//       if (userFound = true) {
//         Get.snackbar("Success", "Login Successfully", colorText: Colors.green);
//         Get.to(HiveHome());
//       } else {
//         Get.snackbar("Error", "No User Found", colorText: Colors.red);
//       }
//     } else {
//       Get.snackbar("Error", "Fields must not to be empty",
//           colorText: Colors.red);
//     }
//   }
// }
