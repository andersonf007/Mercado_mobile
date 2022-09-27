// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendaItens_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendaItens _$VendaItensFromJson(Map<String, dynamic> json) => VendaItens(
      id: json['id'] as int?,
      qtdProdutos: json['qtdProdutos'] as int?,
      valorTotal: (json['valorTotal'] as num?)?.toDouble(),
      validade: json['validade'] == null
          ? null
          : DateTime.parse(json['validade'] as String),
      produto: json['produto'] == null
          ? null
          : Produto.fromJson(json['produto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaItensToJson(VendaItens instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qtdProdutos': instance.qtdProdutos,
      'valorTotal': instance.valorTotal,
      'validade': instance.validade?.toIso8601String(),
      'produto': instance.produto,
    };
