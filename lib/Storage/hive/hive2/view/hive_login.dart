// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_main/Storage/hive/hive2/database/hive_db.dart';
import 'package:flutter_main/Storage/hive/hive2/model/user_model.dart';
import 'package:flutter_main/Storage/hive/hive2/view/hive_home.dart';
import 'package:flutter_main/Storage/hive/hive2/view/hive_reg.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive_flutter/adapters.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path);
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>("UserData");
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HiveLogin(),
  ));
}

class HiveLogin extends StatelessWidget {
  final emailCtrl = TextEditingController();
  final pwdCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailCtrl,
            decoration: const InputDecoration(hintText: "Username"),
          ),
          TextField(
            controller: pwdCtrl,
            decoration: const InputDecoration(hintText: "Password"),
          ),
          ElevatedButton(
              onPressed: () async {
                final regUserList = await HiveDb.instance.getUser();
                validateLogin(regUserList);
              },
              child: const Text("Login")),
          TextButton(
              onPressed: () {
                Get.to(HiveReg());
              },
              child: const Text("Don't have Account? Register Here.."))
        ],
      ),
    );
  }

  void validateLogin(List<User> regUserList) async {
    final eemail = emailCtrl.text.trim();
    final epwd = pwdCtrl.text.trim();
    bool userFound = false;
    if (eemail != "" && epwd != "") {
      await Future.forEach(regUserList, (user) {
        // to check  email already existing
        if (user.email == eemail && user.password == epwd) {
          userFound = true;
        } else {
          userFound = false;
        }
      });
      if (userFound = true) {
        Get.snackbar("Success", "Login Successfully", colorText: Colors.green);
        Get.to(HiveHome());
      } else {
        Get.snackbar("Error", "No User Found", colorText: Colors.red);
      }
    } else {
      Get.snackbar("Error", "Fields must not to be empty",
          colorText: Colors.red);
    }
  }
}
