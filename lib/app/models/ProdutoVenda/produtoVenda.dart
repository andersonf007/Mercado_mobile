import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';

part 'produtoVenda.g.dart';

@JsonSerializable()
class ProdutoVenda{
  int? id;
  int? qtdProdutos;
  double? valorTotal;
  String? validade;
  Produto? produto;

 ProdutoVenda({
    this.id,
    this.qtdProdutos,
    this.valorTotal,
    this.validade,
    this.produto,
  });
 factory ProdutoVenda.fromJson(Map<String, dynamic> json) =>
      _$ProdutoVendaFromJson(json);
  Map<String, dynamic> toJson() => _$ProdutoVendaToJson(this);

  ProdutoVenda copywith({
    int? id,
    int? qtdProdutos,
    double? valorTotal,
    String? validade,
    Produto? produto,
  }){
    return ProdutoVenda(
      id: id ?? this.id,
      qtdProdutos: qtdProdutos ?? this.qtdProdutos,
      valorTotal: valorTotal ?? this.valorTotal,
      validade: validade ?? this.validade,
      produto: produto ?? this.produto,
    );
  }
}