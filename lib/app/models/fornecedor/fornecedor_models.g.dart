// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fornecedor_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fornecedor _$FornecedorFromJson(Map<String, dynamic> json) => Fornecedor(
      id: json['id'] as int?,
      cnpjFornecedor: json['cnpjFornecedor'] as String?,
      nomeFornecedor: json['nomeFornecedor'] as String?,
      emailFornecedor: json['emailFornecedor'] as String?,
      telefoneFornecedor: json['telefoneFornecedor'] as String?,
      enderecoFornecedor: json['enderecoFornecedor'] == null
          ? null
          : Endereco.fromJson(
              json['enderecoFornecedor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FornecedorToJson(Fornecedor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomeFornecedor': instance.nomeFornecedor,
      'cnpjFornecedor': instance.cnpjFornecedor,
      'emailFornecedor': instance.emailFornecedor,
      'telefoneFornecedor': instance.telefoneFornecedor,
      'enderecoFornecedor': instance.enderecoFornecedor,
    };
