import 'package:json_annotation/json_annotation.dart';

part 'fornecedor_models.g.dart';

@JsonSerializable()
class Fornecedor{
  int? id;
	String? nome;
  String? cnpj;
  String? email;
  String? telefone;

  Fornecedor({
    this.id,
    this.cnpj,
    this.nome,
    this.email,
    this.telefone
  });
   factory Fornecedor.fromJson(Map<String, dynamic> json) =>
      _$FornecedorFromJson(json);
  Map<String, dynamic> toJson() => _$FornecedorToJson(this);

Fornecedor copywith({
   int? id,
	 String? nome,
	 String? cnpj,
	 String? telefone,
	 String? email,
  }){
    return Fornecedor(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cnpj: cnpj ?? this.cnpj,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
    );
  }
}