import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';

part 'produtoCompra.g.dart';

@JsonSerializable()
class ProdutoCompra{
  int? id;
  int? qtdProdutos;
  double? valorTotal;
  String? validade;
  Produto? produto;

 ProdutoCompra({
    this.id,
    this.qtdProdutos,
    this.valorTotal,
    this.validade,
    this.produto,
  });
 factory ProdutoCompra.fromJson(Map<String, dynamic> json) =>
      _$ProdutoCompraFromJson(json);
  Map<String, dynamic> toJson() => _$ProdutoCompraToJson(this);

  ProdutoCompra copywith({
    int? id,
    int? qtdProdutos,
    double? valorTotal,
    String? validade,
    Produto? produto,
  }){
    return ProdutoCompra(
      id: id ?? this.id,
      qtdProdutos: qtdProdutos ?? this.qtdProdutos,
      valorTotal: valorTotal ?? this.valorTotal,
      validade: validade ?? this.validade,
      produto: produto ?? this.produto,
    );
  }
}