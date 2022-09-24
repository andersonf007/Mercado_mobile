// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endereco _$EnderecoFromJson(Map<String, dynamic> json) => Endereco(
      id: json['id'] as int?,
      logradouro: json['logradouro'] as String?,
      uf: json['uf'] as String?,
      cidade: json['cidade'] as String?,
      bairro: json['bairro'] as String?,
      numero: json['numero'] as String?,
      cep: json['cep'] as String?,
    );

Map<String, dynamic> _$EnderecoToJson(Endereco instance) => <String, dynamic>{
      'id': instance.id,
      'logradouro': instance.logradouro,
      'uf': instance.uf,
      'cidade': instance.cidade,
      'bairro': instance.bairro,
      'numero': instance.numero,
      'cep': instance.cep,
    };
