// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendaItens_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendaItens _$VendaItensFromJson(Map<String, dynamic> json) => VendaItens(
      id: json['id'] as int?,
      qtdProdutos: json['qtdProdutos'] as int?,
      valorTotal: (json['valorTotal'] as num?)?.toDouble(),
      validade: json['validade'] as String?,
      produto_id: json['produto_id'] as int?,
      nomeProduto: json['nomeProduto'] as String?,
    );

Map<String, dynamic> _$VendaItensToJson(VendaItens instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qtdProdutos': instance.qtdProdutos,
      'valorTotal': instance.valorTotal,
      'validade': instance.validade,
      'produto_id': instance.produto_id,
      'nomeProduto': instance.nomeProduto,
    };
