// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class CarsDatabase {
//   static final CarsDatabase instance = CarsDatabase.init();

//   static Database? _database;

//   CarsDatabase.init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB("cars.db");
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);
//     return await openDatabase(path, version: 1, onCreate: _createDB );
//   }

//   Future _createDB(Database db, int version) async {
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

//   // newCar(CarsEntity newCar) async {
//   //   final db = await database;
//   //   var table = await db.rawQuery("SELECT MAX(carId)+1 as id FROM Client");
//   //   int id = table.first["carId"];
//   // }
//   // Future<CarsEntity> create(CarsEntity carEntity) async {
//   //   final db = await instance.database;

//   //   final id = await db.insert("cars", carEntity.toJson());
//   // }

//   Future close() async {
//     final db = await instance.database;
//     db.close();
//   }
// }
