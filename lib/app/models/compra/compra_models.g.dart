// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Compra _$CompraFromJson(Map<String, dynamic> json) => Compra(
      horaCompra: json['horaCompra'] as String?,
      id: json['id'] as int?,
      valorTotalCompra: (json['valorTotalCompra'] as num?)?.toDouble(),
      produtosCompra: (json['produtosCompra'] as List<dynamic>?)
          ?.map((e) => ProdutoCompra.fromJson(e as Map<String, dynamic>))
          .toList(),
      fornecedorCompra: json['fornecedorCompra'] == null
          ? null
          : Fornecedor.fromJson(
              json['fornecedorCompra'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CompraToJson(Compra instance) => <String, dynamic>{
      'id': instance.id,
      'horaCompra': instance.horaCompra,
      'valorTotalCompra': instance.valorTotalCompra,
      'fornecedorCompra': instance.fornecedorCompra,
      'produtosCompra': instance.produtosCompra,
    };
