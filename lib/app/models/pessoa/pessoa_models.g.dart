// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pessoa_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pessoa _$PessoaFromJson(Map<String, dynamic> json) => Pessoa(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      cpf: json['cpf'] as String?,
      sexo: json['sexo'] as String?,
      dataNascimento: json['dataNascimento'] as String?,
      email: json['email'] as String?,
      enderecoPessoa: json['enderecoPessoa'] == null
          ? null
          : Endereco.fromJson(json['enderecoPessoa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PessoaToJson(Pessoa instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'sexo': instance.sexo,
      'dataNascimento': instance.dataNascimento,
      'email': instance.email,
      'enderecoPessoa': instance.enderecoPessoa,
    };
