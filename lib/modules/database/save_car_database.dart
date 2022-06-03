import 'package:carsregister/modules/database/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class SaveCarDatabase {
  Future save(
    carBrandCode,
    carBrandName,
    carModelCode,
    carModelName,
    carYearCode,
    carYearName,
    carFipe,
    billingMethod,
    billingValue,
    isGasCharged,
  ) async {
    // var collaboratorID = await GetCollaboratorID().get();
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
    Database _db = await DatabaseConnection().get();
    await _db.insert('cars', jsonData,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }
}
