import 'package:sqflite/sqflite.dart';

class OpenDatabase {
  Future get(String path) async {
    var db =
        await openDatabase(path, version: 3, onCreate: (db, version) async {
      db.execute("""CREATE TABLE cars(
carId INTEGER PRIMARY KEY AUTOINCREMENT,
carBrandCode TEXT NOT NULL,
carBrandName TEXT NOT NULL,
carModelCode TEXT NOT NULL,
carModelName TEXT NOT NULL,
carYearCode TEXT NOT NULL,
carYearName TEXT NOT NULL,
carFipe TEXT NOT NULL,
billingMethod TEXT NOT NULL,
billingValue TEXT NOT NULL,
isGasCharged BOOLEN NOT NULL
);""");
    });
    return db;
  }
}

// Future _createDB(Database db, int version) async {
//     await db.execute("""CREATE TABLE cars(
// carId INTEGER PRIMARY KEY AUTOINCREMENT,
// carBrandCode TEXT NOT NULL,
// carBrandName TEXT NOT NULL,
// carModelCode TEXT NOT NULL,
// carModelName TEXT NOT NULL,
// carYearCode TEXT NOT NULL,
// carYearName TEXT NOT NULL,
// carFipe TEXT NOT NULL,
// billingMethod TEXT NOT NULL,
// billingValue TEXT NOT NULL,
// isGasCharged BOOLEN NOT NULL
// );""");
//   }