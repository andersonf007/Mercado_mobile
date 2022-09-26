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
      listVendaItens: (json['listVendaItens'] as List<dynamic>?)
          ?.map((e) => VendaItens.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VendaToJson(Venda instance) => <String, dynamic>{
      'id': instance.id,
      'horaVenda': instance.horaVenda,
      'valorTotal': instance.valorTotal,
      'formaPagamento': instance.formaPagamento,
      'listVendaItens': instance.listVendaItens,
    };
