import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';

part 'pessoa_models.g.dart';

@JsonSerializable()
class Pessoa{
   int? id;
	 String? nome;
	 String? cpf;
	 String? sexo;
	 DateTime? dataNascimento;
	 String? email;   
  Endereco? enderecoPessoa;

   Pessoa({
    this.id,
    this.nome,
    this.cpf,
    this.sexo,
    this.dataNascimento,
    this.email,
    this.enderecoPessoa
   });

   factory Pessoa.fromJson(Map<String, dynamic> json) =>
      _$PessoaFromJson(json);
  Map<String, dynamic> toJson() => _$PessoaToJson(this);

  Pessoa copywith({
    int? id,
	 String? nome,
	 String? cpf,
	 String? sexo,
	 DateTime? dataNascimento,
	 String? email,
  Endereco? enderecoPessoa,
  }){
    return Pessoa(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      sexo: sexo ?? this.sexo,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      email: email ?? this.email,
      enderecoPessoa: enderecoPessoa ?? this.enderecoPessoa,
    );
  }
}