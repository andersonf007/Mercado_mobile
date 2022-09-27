import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';

part 'fornecedor_models.g.dart';

@JsonSerializable()
class Fornecedor{
  int? id;
	String? nomeFornecedor;
  String? cnpjFornecedor;
  String? emailFornecedor;
  String? telefoneFornecedor;
  Endereco? enderecoFornecedor;

  Fornecedor({
    this.id,
    this.cnpjFornecedor,
    this.nomeFornecedor,
    this.emailFornecedor,
    this.telefoneFornecedor,
    this.enderecoFornecedor
  });
   factory Fornecedor.fromJson(Map<String, dynamic> json) =>
      _$FornecedorFromJson(json);
  Map<String, dynamic> toJson() => _$FornecedorToJson(this);

Fornecedor copywith({
   int? id,
	 String? nomeFornecedor,
	 String? cnpjFornecedor,
	 String? telefoneFornecedor,
	 String? emailFornecedor,
  Endereco? enderecoFornecedor,
  }){
    return Fornecedor(
      id: id ?? this.id,
      nomeFornecedor: nomeFornecedor ?? this.nomeFornecedor,
      cnpjFornecedor: cnpjFornecedor ?? this.cnpjFornecedor,
      telefoneFornecedor: telefoneFornecedor ?? this.telefoneFornecedor,
      emailFornecedor: emailFornecedor ?? this.emailFornecedor,
      enderecoFornecedor: enderecoFornecedor ?? this.enderecoFornecedor,
    );
  }
}