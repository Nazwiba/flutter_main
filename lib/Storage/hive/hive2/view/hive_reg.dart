import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../database/hive_db.dart';
import '../model/user_model.dart';
import 'hive_login.dart';

class Hive_reg extends StatelessWidget {
  final emil_ctrl = TextEditingController();
  final pwd_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("signup"),),
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
            ElevatedButton(onPressed: () async {
              final regUserList=await HiveDb.instance.getUser();
              validate_registration(regUserList);
            },


                child: Text("Register Here"))
          ],
        ),
      ),
    );
  }

  void validate_registration(List<User> regUserList) async{
    final eemail=emil_ctrl.text.trim();
    final epwd=pwd_ctrl.text.trim();
    bool userFound=false;
    final validateEmail=EmailValidator.validate(eemail);

    if(eemail!='' && epwd!='')
    {
      if(validateEmail==true){
            //to validate email
        await Future.forEach(regUserList, (user) { //to check email already existing
          if(user.email==eemail)
          {userFound=true;}
          else{userFound=false;}
        });

        if(userFound==true)
        {
          Get.snackbar("Error", "User already existing",colorText: Colors.red);
        }
        else
        {// to validate password
          final validatePassword=check_password(epwd);
          if(validatePassword==true){
            final newUser=User(email: eemail, password: epwd);
            await HiveDb.instance.addUser(newUser);
            Get.to(HiveLogin());
            Get.snackbar("Success", "Registration Success",colorText: Colors.green);
          }
        }
      }

      else{
        Get.snackbar("Error", "Enter a valid email id",colorText: Colors.red);
      }

    }
    else{
Get.snackbar("Error", "Fields must not be empty",colorText: Colors.red);
    }
  }

  bool check_password(String epwd)
  {
    if(epwd.length<6){
      Get.snackbar("Error","password length error");
      return false;
    }
    else return true;
  }
}




// // ignore_for_file: unused_local_variable

// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_main/Storage/hive/hive2/database/hive_db.dart';
// import 'package:flutter_main/Storage/hive/hive2/model/user_model.dart';
// import 'package:flutter_main/Storage/hive/hive2/view/hive_login.dart';
// import 'package:get/get.dart';

// class HiveReg extends StatelessWidget {
//   final emailCtrl = TextEditingController();
//   final pwdCtrl = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Registration"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             controller: emailCtrl,
//             decoration: const InputDecoration(hintText: "email"),
//           ),
//           TextField(
//             controller: pwdCtrl,
//             decoration: const InputDecoration(hintText: "Password"),
//           ),
//           ElevatedButton(
//               onPressed: () async {
//                 final regUserList = await HiveDb.instance.getUser();
//                 validateRegistration(regUserList);
//               },
//               child: const Text("Register Here")),
//         ],
//       ),
//     );
//   }

//   void validateRegistration(List<User> regUserList) async {
//     final eemail = emailCtrl.text.trim();
//     final epwd = pwdCtrl.text.trim();
//     bool userFound = false;
//     final validateEmail = EmailValidator.validate(eemail);

//     if (eemail != "" && epwd != "") {
//       if (validateEmail == true) {
//         // to validate email
//         await Future.forEach(regUserList, (user) {
//           // to check  email already existing
//           if (user.email == eemail) {
//             userFound = true;
//           } else {
//             userFound = false;
//           }
//         });
//         if (userFound == true) {
//           Get.snackbar("Error", "User Already Existing", colorText: Colors.red);
//         } else // to validtae password
//         {
//           final validatePassword = checkPassword(epwd);
//           if (validatePassword == true) {
//             final newUser = User(email: eemail, password: epwd);
//             await HiveDb.instance.addUser(newUser);
//             Get.to( HiveLogin());
//             Get.snackbar("Success", "Registered Successfully",
//                 colorText: Colors.green);
//           }
//         }
//       } else {
//         Get.snackbar("Error", "Enter a Valid Email Id", colorText: Colors.red);
//       }
//     } else {
//       Get.snackbar("Error", "Fields must not be Empty", colorText: Colors.red);
//     }
//   }

//   bool checkPassword(String epwd) {
//     if (epwd.length < 6) {
//       Get.snackbar("Error", "Password length should be greaterthan six",
//           colorText: Colors.red);
//       return false;
//     } else {
//       return true;
//     }
//   }
// }
