import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';

part 'vendaItens_models.g.dart';

@JsonSerializable()
class VendaItens{
  int? id;
  int? qtdProdutos;
  double? valorTotal;
  DateTime? validade;
  Produto? produto;

 VendaItens({
    this.id,
    this.qtdProdutos,
    this.valorTotal,
    this.validade,
    this.produto,
  });
 factory VendaItens.fromJson(Map<String, dynamic> json) =>
      _$VendaItensFromJson(json);
  Map<String, dynamic> toJson() => _$VendaItensToJson(this);

  VendaItens copywith({
    int? id,
    int? qtdProdutos,
    double? valorTotal,
    DateTime? validade,
    Produto? produto,
  }){
    return VendaItens(
      id: id ?? this.id,
      qtdProdutos: qtdProdutos ?? this.qtdProdutos,
      valorTotal: valorTotal ?? this.valorTotal,
      validade: validade ?? this.validade,
      produto: produto ?? this.produto,
    );
  }
}