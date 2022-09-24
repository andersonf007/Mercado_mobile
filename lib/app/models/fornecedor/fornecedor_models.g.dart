// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fornecedor_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fornecedor _$FornecedorFromJson(Map<String, dynamic> json) => Fornecedor(
      id: json['id'] as int?,
      cnpj: json['cnpj'] as String?,
      nome: json['nome'] as String?,
      email: json['email'] as String?,
      telefone: json['telefone'] as String?,
    );

Map<String, dynamic> _$FornecedorToJson(Fornecedor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'cnpj': instance.cnpj,
      'email': instance.email,
      'telefone': instance.telefone,
    };
