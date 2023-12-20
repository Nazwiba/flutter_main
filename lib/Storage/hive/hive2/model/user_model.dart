import 'package:hive/hive.dart';
part 'user_model.g.dart'; // in terminal we write flutter packages pub run build_runner build, this code is run after completion the error of the part 'user_model.g.dart'; is removed that means this file is automatically created.

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String email;

  @HiveField(1)
  final String password;

  @HiveField(2)
  String? id;

  @HiveField(3)
  String? name;

  @HiveField(4)
  String? age;

  User({required this.email, required this.password, this.name, this.age}) {
    id = DateTime.now().microsecondsSinceEpoch.toString();
    // datetime = for generate unique id, microsecondsSinceEopch = independent of time zone, toString = convert to string
  }
}
