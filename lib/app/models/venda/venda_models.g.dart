// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venda_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Venda _$VendaFromJson(Map<String, dynamic> json) => Venda(
      formaPagamento: json['formaPagamento'] as String?,
      horaVenda: json['horaVenda'] as String?,
      id: json['id'] as int?,
      valorTotal: (json['valorTotal'] as num?)?.toDouble(),
      clienteVenda: json['clienteVenda'] == null
          ? null
          : Pessoa.fromJson(json['clienteVenda'] as Map<String, dynamic>),
      produtosVenda: (json['produtosVenda'] as List<dynamic>?)
          ?.map((e) => ProdutoVenda.fromJson(e as Map<String, dynamic>))
          .toList(),
      vendedorVenda: json['vendedorVenda'] == null
          ? null
          : Vendedor.fromJson(json['vendedorVenda'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VendaToJson(Venda instance) => <String, dynamic>{
      'id': instance.id,
      'horaVenda': instance.horaVenda,
      'valorTotal': instance.valorTotal,
      'formaPagamento': instance.formaPagamento,
      'clienteVenda': instance.clienteVenda,
      'vendedorVenda': instance.vendedorVenda,
      'produtosVenda': instance.produtosVenda,
    };
