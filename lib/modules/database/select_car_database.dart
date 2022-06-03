import 'dart:convert';

import 'package:carsregister/modules/database/database_connection.dart';
import 'package:carsregister/modules/domain/model/car_entity.dart';
import 'package:sqflite/sqflite.dart';

class SelectCarDatabase {
  Future select() async {
    // var collaboratorID = await GetCollaboratorID().get();
    dynamic carsList = [];
    Database _db = await DatabaseConnection().get();
    carsList = await _db.rawQuery("SELECT * FROM cars");
    print(carsList);
  }
}
