// // ignore_for_file: non_constant_identifier_names

// import 'package:sqflite/sqflite.dart' as sql;

// class SQLHelper {
//   //create database
//   // OpenDb - user defined method to create db
//   static Future<sql.Database> OpenDb() async {
//     return sql.openDatabase('contact', version: 1,
//         onCreate: (sql.Database db, int version) async {
//       await createTable(db);
//     });
//   }

//   //create Table
//   static Future<void> createTable(sql.Database db) async {
//     await db.execute("""CREATE TABLE mycontacts(
//        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
//        name TEXT,
//        phone TEXT
//       )""");
//   }

// // insert data to database
//   static Future<void> createContact(String cname, String cphone) async {
//     final db = await SQLHelper.OpenDb(); // to open database
//     final data = {"name": cname, "phone": cphone};
//     db.insert('mycontacts', data);
//   }

//   static Future<List<Map<String, dynamic>>> readData() async {
//     final db = await SQLHelper.OpenDb();
//     return db.query("mycontacts", orderBy: "name"); // read all data from db by name
//   }

//   static Future<void> updateContact(
//       int? id, String uname, String uphone) async {
//     final db = await SQLHelper.OpenDb();
//     final updateData = {"name": uname, "phone": uphone};
//     await db.update("mycontacts", updateData, where: "id=?", whereArgs: [id]);
//   }

//   static Future<void> deleteContact(int id) async {
//     final db = await SQLHelper.OpenDb();
//     await db.delete("mycontacts", where: "id=?", whereArgs: [id]);
//   }
//
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  //create database
  // OpenDb - user defined method to create db
  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('contact', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  //create Table
  static Future<void> createTable(sql.Database db) async {
    await db.execute("""CREATE TABLE mycontacts(
       id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
       name TEXT,
       phone TEXT
      )""");
  }

// insert data to database
  static Future<int> create_contact(String cname, String cphone) async {
    final db = await SQLHelper.OpenDb(); // to open database
    final data = {"name": cname, "phone": cphone};
    final id = db.insert('mycontacts', data);
    return id;
  }

// read all the data from db
  static Future<List<Map<String, dynamic>>> readData() async {
    final db = await SQLHelper.OpenDb();
    return db.query("mycontacts", orderBy: 'id'); // read all the datas by id
  }

// to update a single value
  static Future<int> updateContact(int? id, String name, String phone) async {
    final db = await SQLHelper.OpenDb();
    final udata = {'name': name, 'phone': phone};
    final result =
        await db.update("mycontacts", udata, where: "id=?", whereArgs: [id]);
    return result;
  }

// to delete a single value
  static Future<void> deleteData(int? id) async {
    final db = await SQLHelper.OpenDb();
    try {
      db.delete('mycontacts', where: "id=?", whereArgs: [id]);
    } catch (e) {
      print(e);
    }
  }
}
