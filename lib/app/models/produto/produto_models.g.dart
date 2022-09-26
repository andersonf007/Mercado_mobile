// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'produto_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Produto _$ProdutoFromJson(Map<String, dynamic> json) => Produto(
      id: json['id'] as int?,
      nome: json['nome'] as String?,
      categoria: json['categoria'] as String?,
      quantidade: json['quantidade'] as int?,
      vCompra: (json['vCompra'] as num?)?.toDouble(),
      vVenda: (json['vVenda'] as num?)?.toDouble(),
      validade: json['validade'] as String?,
    );

Map<String, dynamic> _$ProdutoToJson(Produto instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'categoria': instance.categoria,
      'vCompra': instance.vCompra,
      'vVenda': instance.vVenda,
      'quantidade': instance.quantidade,
      'validade': instance.validade,
    };
