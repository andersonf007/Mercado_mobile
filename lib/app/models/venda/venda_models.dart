import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/vendaItem_models/vendaItens_models.dart';

part 'venda_models.g.dart';

@JsonSerializable()
class Venda{
  int? id;
  String? horaVenda;
  double? valorTotal;
  String? formaPagamento;
  List<VendaItens>? listVendaItens;
  Venda({
    this.formaPagamento,
    this.horaVenda,
    this.id,
    this.valorTotal,
    this.listVendaItens,
  });
 factory Venda.fromJson(Map<String, dynamic> json) =>
      _$VendaFromJson(json);
  Map<String, dynamic> toJson() => _$VendaToJson(this);

  Venda copywith({
    int? id,
    String? horaVenda,
    double? valorTotal,
    String? formaPagamento,
  List<VendaItens>? listVendaItens,
  }){
    return Venda(
      id: id ?? this.id,
      formaPagamento: formaPagamento ?? this.formaPagamento,
      horaVenda: horaVenda ?? this.horaVenda,
      valorTotal: valorTotal ?? this.valorTotal,
      listVendaItens: listVendaItens ?? this.listVendaItens,
    );
  }
}