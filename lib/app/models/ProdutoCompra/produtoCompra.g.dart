// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produtoCompra.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdutoCompra _$ProdutoCompraFromJson(Map<String, dynamic> json) =>
    ProdutoCompra(
      id: json['id'] as int?,
      qtdProdutos: json['qtdProdutos'] as int?,
      valorTotal: (json['valorTotal'] as num?)?.toDouble(),
      validade: json['validade'] as String?,
      produto: json['produto'] == null
          ? null
          : Produto.fromJson(json['produto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProdutoCompraToJson(ProdutoCompra instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qtdProdutos': instance.qtdProdutos,
      'valorTotal': instance.valorTotal,
      'validade': instance.validade,
      'produto': instance.produto,
    };
