import 'package:json_annotation/json_annotation.dart';

part 'vendaItens_models.g.dart';

@JsonSerializable()
class VendaItens{
  int? id;
  int? qtdProdutos;
  double? valorTotal;
  String? validade;
  int? produto_id;
  String? nomeProduto;

 VendaItens({
    this.id,
    this.qtdProdutos,
    this.valorTotal,
    this.validade,
    this.produto_id,
    this.nomeProduto,
  });
 factory VendaItens.fromJson(Map<String, dynamic> json) =>
      _$VendaItensFromJson(json);
  Map<String, dynamic> toJson() => _$VendaItensToJson(this);

  VendaItens copywith({
    int? id,
    int? qtdProdutos,
    double? valorTotal,
    String? validade,
    int? produto_id,
    String? nomeProduto,
  }){
    return VendaItens(
      id: id ?? this.id,
      qtdProdutos: qtdProdutos ?? this.qtdProdutos,
      valorTotal: valorTotal ?? this.valorTotal,
      validade: validade ?? this.validade,
      produto_id: produto_id ?? this.produto_id,
      nomeProduto: nomeProduto ?? this.nomeProduto,
    );
  }
}