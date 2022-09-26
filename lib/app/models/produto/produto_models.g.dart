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
      valorCompra: (json['valorCompra'] as num?)?.toDouble(),
      valorVenda: (json['valorVenda'] as num?)?.toDouble(),
      validade: json['validade'] as String?,
    );

Map<String, dynamic> _$ProdutoToJson(Produto instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'categoria': instance.categoria,
      'valorCompra': instance.valorCompra,
      'valorVenda': instance.valorVenda,
      'quantidade': instance.quantidade,
      'validade': instance.validade,
    };
