class CarYearEntity {
  CarYearEntity({
    required this.nome,
    required this.codigo,
  });
  late final String nome;
  late final String codigo;
  
  CarYearEntity.fromJson(Map<String, dynamic> json){
    nome = json['nome'];
    codigo = json['codigo'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['nome'] = nome;
    _data['codigo'] = codigo;
    return _data;
  }
}