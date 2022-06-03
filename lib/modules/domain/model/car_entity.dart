class CarEntity {
  CarEntity({
    required this.carId,
    required this.carBrandCode,
    required this.carBrandName,
    required this.carModelCode,
    required this.carModelName,
    required this.carYearCode,
    required this.carYearName,
    required this.carFipe,
    required this.billingMethod,
    required this.billingValue,
    required this.isGasCharged,
  });
  late final int carId;
  late final String carBrandCode;
  late final String carBrandName;
  late final String carModelCode;
  late final String carModelName;
  late final String carYearCode;
  late final String carYearName;
  late final String carFipe;
  late final String billingMethod;
  late final String billingValue;
  late final bool isGasCharged;
  
  CarEntity.fromJson(Map<String, dynamic> json){
    carId = json['carId'];
    carBrandCode = json['carBrandCode'];
    carBrandName = json['carBrandName'];
    carModelCode = json['carModelCode'];
    carModelName = json['carModelName'];
    carYearCode = json['carYearCode'];
    carYearName = json['carYearName'];
    carFipe = json['carFipe'];
    billingMethod = json['billingMethod'];
    billingValue = json['billingValue'];
    isGasCharged = json['isGasCharged'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['carId'] = carId;
    _data['carBrandCode'] = carBrandCode;
    _data['carBrandName'] = carBrandName;
    _data['carModelCode'] = carModelCode;
    _data['carModelName'] = carModelName;
    _data['carYearCode'] = carYearCode;
    _data['carYearName'] = carYearName;
    _data['carFipe'] = carFipe;
    _data['billingMethod'] = billingMethod;
    _data['billingValue'] = billingValue;
    _data['isGasCharged'] = isGasCharged;
    return _data;
  }
}