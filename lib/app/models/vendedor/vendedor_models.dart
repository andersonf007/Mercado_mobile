import 'package:json_annotation/json_annotation.dart';

part 'vendedor_models.g.dart';

@JsonSerializable()
class Vendedor{
  int? id;
	String? nome;
	String? cpf;
	String? sexo;
	String? dataNascimento;
	String? email;
  String? cargo;
  double? salario;
  String? dataContrato;

  Vendedor({
    this.id,
    this.nome,
    this.cpf,
    this.sexo,
    this.dataNascimento,
    this.email,
    this.cargo,
    this.salario,
    this.dataContrato
  });
  factory Vendedor.fromJson(Map<String, dynamic> json) =>
      _$VendedorFromJson(json);
  Map<String, dynamic> toJson() => _$VendedorToJson(this);

  Vendedor copywith({
    int? id,
	  String? nome,
	  String? cpf,
	  String? sexo,
	  String? dataNascimento,
	  String? email,
    String? cargo,
    double? salario,
    String? dataContrato,
  }){
    return Vendedor(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      sexo: sexo ?? this.sexo,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      email: email ?? this.email,
      cargo: cargo ?? this.cargo,
      salario: salario ?? this.salario,
      dataContrato: dataContrato ?? dataContrato
    );
  }
}