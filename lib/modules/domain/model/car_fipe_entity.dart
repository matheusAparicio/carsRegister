class CarFipeEntity {
  CarFipeEntity({
    required this.Valor,
    required this.Marca,
    required this.Modelo,
    required this.AnoModelo,
    required this.Combustivel,
    required this.CodigoFipe,
    required this.MesReferencia,
    required this.TipoVeiculo,
    required this.SiglaCombustivel,
  });
  late final String Valor;
  late final String Marca;
  late final String Modelo;
  late final int AnoModelo;
  late final String Combustivel;
  late final String CodigoFipe;
  late final String MesReferencia;
  late final int TipoVeiculo;
  late final String SiglaCombustivel;
  
  CarFipeEntity.fromJson(Map<String, dynamic> json){
    Valor = json['Valor'];
    Marca = json['Marca'];
    Modelo = json['Modelo'];
    AnoModelo = json['AnoModelo'];
    Combustivel = json['Combustivel'];
    CodigoFipe = json['CodigoFipe'];
    MesReferencia = json['MesReferencia'];
    TipoVeiculo = json['TipoVeiculo'];
    SiglaCombustivel = json['SiglaCombustivel'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Valor'] = Valor;
    _data['Marca'] = Marca;
    _data['Modelo'] = Modelo;
    _data['AnoModelo'] = AnoModelo;
    _data['Combustivel'] = Combustivel;
    _data['CodigoFipe'] = CodigoFipe;
    _data['MesReferencia'] = MesReferencia;
    _data['TipoVeiculo'] = TipoVeiculo;
    _data['SiglaCombustivel'] = SiglaCombustivel;
    return _data;
  }
}