import 'package:json_annotation/json_annotation.dart';

part 'endereco_models.g.dart';

@JsonSerializable()
class Endereco{
  int? id;
  String? logradouro;
  String? uf;
  String? cidade;
  String? bairro;
  String? numero;
  String? cep;

  Endereco({
    this.id,
    this.logradouro,
    this.uf,
    this.cidade,
    this.bairro,
    this.numero,
    this.cep
  });
     factory Endereco.fromJson(Map<String, dynamic> json) =>
      _$EnderecoFromJson(json);
  Map<String, dynamic> toJson() => _$EnderecoToJson(this);

  Endereco copywith({
  int? id,
  String? logradouro,
  String? uf,
  String? cidade,
  String? bairro,
  String? numero,
  String? cep,
  }){
    return Endereco(
    id: id ?? this.id,
    logradouro: logradouro ?? this.logradouro,
    uf: uf ?? this.uf,
    cidade: cidade ?? this.cidade,
    bairro: bairro ?? this.bairro,
    numero: numero ?? this.numero,
    cep: cep ?? this.cep
    );
  }
}