import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/ProdutoCompra/produtoCompra.dart';
import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';

part 'compra_models.g.dart';

@JsonSerializable()
class Compra{
  int? id;
  String? horaCompra;
  double? valorTotalCompra;
  Fornecedor? fornecedorCompra;
  List<ProdutoCompra>? produtosCompra;
  Compra({
    this.horaCompra,
    this.id,
    this.valorTotalCompra,
    this.produtosCompra,
    this.fornecedorCompra
  });
 factory Compra.fromJson(Map<String, dynamic> json) =>
      _$CompraFromJson(json);
  Map<String, dynamic> toJson() => _$CompraToJson(this);

  Compra copywith({
    int? id,
    String? horaCompra,
    double? valorTotalCompra,
    Fornecedor? fornecedorCompra,
    List<ProdutoCompra>? produtosCompra,
  }){
    return Compra(
      id: id ?? this.id,
      horaCompra: horaCompra ?? this.horaCompra,
      valorTotalCompra: valorTotalCompra ?? this.valorTotalCompra,
      fornecedorCompra: fornecedorCompra ?? this.fornecedorCompra,
      produtosCompra: produtosCompra ?? this.produtosCompra,
    );
  }
}