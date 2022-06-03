import 'package:carsregister/modules/database/open_database.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseConnection {
  late Database _db;
  Future<Database> get() async {
    var path = join(await getDatabasesPath(), "cars.db");
    _db = await OpenDatabase().get(path);
    return _db;
  }
}