import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CarsDatabase {
  Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, "cars.db");
    return await openDatabase(path, version: 3, onCreate: (db, version) async {
      _createDB(db);
    });
  }

  Future insertCar({
    required carBrandCode,
    required carBrandName,
    required carModelCode,
    required carModelName,
    required carYearCode,
    required carYearName,
    required carFipe,
    required billingMethod,
    required billingValue,
    required isGasCharged,
  }) async {
    var jsonData = {
      "carBrandCode": carBrandCode,
      "carBrandName": carBrandName,
      "carModelCode": carModelCode,
      "carModelName": carModelName,
      "carYearCode": carYearCode,
      "carYearName": carYearName,
      "carFipe": carFipe,
      "billingMethod": billingMethod,
      "billingValue": billingValue,
      "isGasCharged": isGasCharged,
    };
    Database _db =
        await initDB(); //TODO deixar singleton para reaproveitar o db como variavel da classe
    await _db.insert('cars', jsonData,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future selectCar({String select = "*", String where = ""}) async {
    if (where.isNotEmpty) {
      where = "WHERE $where";
    }
    Database _db = await initDB();
    return await _db.rawQuery("SELECT $select FROM cars $where");
  }

  Future _createDB(Database db) async {
    await db.execute("""CREATE TABLE cars(
carId INTEGER PRIMARY KEY AUTOINCREMENT,
carBrandCode TEXT NOT NULL,
carBrandName TEXT NOT NULL,
carModelCode TEXT NOT NULL,
carModelName TEXT NOT NULL,
carYearCode TEXT NOT NULL,
carYearName TEXT NOT NULL,
carFipe TEXT NOT NULL,
billingMethod TEXT NOT NULL,
billingValue FLOAT NOT NULL,
isGasCharged BOOLEN NOT NULL
);""");
  }

  // Future close() async {
  //   final db = await instance.database;
  //   db.close();
  // }
}
