import 'package:json_annotation/json_annotation.dart';

part 'pessoa_models.g.dart';

@JsonSerializable()
class Pessoa{
   int? id;
	 String? nome;
	 String? cpf;
	 String? sexo;
	 String? dataNascimento;
	 String? email;

   Pessoa({
    this.id,
    this.nome,
    this.cpf,
    this.sexo,
    this.dataNascimento,
    this.email
   });

   factory Pessoa.fromJson(Map<String, dynamic> json) =>
      _$PessoaFromJson(json);
  Map<String, dynamic> toJson() => _$PessoaToJson(this);

  Pessoa copywith({
    int? id,
	 String? nome,
	 String? cpf,
	 String? sexo,
	 String? dataNascimento,
	 String? email,
  }){
    return Pessoa(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      sexo: sexo ?? this.sexo,
      dataNascimento: dataNascimento ?? this.dataNascimento,
      email: email ?? this.email,
    );
  }
}