// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendedor_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendedor _$VendedorFromJson(Map<String, dynamic> json) => Vendedor(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      cpf: json['cpf'] as String?,
      sexo: json['sexo'] as String?,
      dataNascimento: json['dataNascimento'] as String?,
      email: json['email'] as String?,
      cargo: json['cargo'] as String?,
      salario: (json['salario'] as num?)?.toDouble(),
      dataContrato: json['dataContrato'] as String?,
      enderecoPessoa: json['enderecoPessoa'] == null
          ? null
          : Endereco.fromJson(json['enderecoPessoa'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendedorToJson(Vendedor instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'sexo': instance.sexo,
      'dataNascimento': instance.dataNascimento,
      'email': instance.email,
      'cargo': instance.cargo,
      'salario': instance.salario,
      'dataContrato': instance.dataContrato,
      'enderecoPessoa': instance.enderecoPessoa,
    };
