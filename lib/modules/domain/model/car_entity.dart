class CarEntity {
  CarEntity({
    required this.carBrand,
    required this.carModel,
    required this.carYear,
    required this.carFIPE,
    required this.billingMethod,
    required this.billingValue,
    required this.isGasCharged,
  });
  late final String carBrand;
  late final String carModel;
  late final String carYear;
  late final String carFIPE;
  late final String billingMethod;
  late final int billingValue;
  late final bool isGasCharged;
  
  CarEntity.fromJson(Map<String, dynamic> json){
    carBrand = json['carBrand'];
    carModel = json['carModel'];
    carYear = json['carYear'];
    carFIPE = json['carFIPE'];
    billingMethod = json['billingMethod'];
    billingValue = json['billingValue'];
    isGasCharged = json['isGasCharged'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['carBrand'] = carBrand;
    _data['carModel'] = carModel;
    _data['carYear'] = carYear;
    _data['carFIPE'] = carFIPE;
    _data['billingMethod'] = billingMethod;
    _data['billingValue'] = billingValue;
    _data['isGasCharged'] = isGasCharged;
    return _data;
  }
}