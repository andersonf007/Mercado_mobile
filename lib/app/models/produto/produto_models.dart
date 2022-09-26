import 'package:json_annotation/json_annotation.dart';

part 'produto_models.g.dart';

@JsonSerializable()
class Produto{

  int? id;
  String? nome;
  String? categoria;
  double? valorCompra;
  double? valorVenda;
  int? quantidade;
  String? validade;

  Produto({
    this.id,
    this.nome,
    this.categoria,
    this.quantidade,
    this.valorCompra,
    this.valorVenda,
    this.validade
  });
 factory Produto.fromJson(Map<String, dynamic> json) =>
      _$ProdutoFromJson(json);
  Map<String, dynamic> toJson() => _$ProdutoToJson(this);

  Produto copywith({
    int? id,
    String? nome,
    String? categoria,
    double? vCompra,
    double? vVenda,
    int? quantidade,
    String? validade,
  }){
    return Produto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      categoria: categoria ?? this.categoria,
      valorCompra: vCompra ?? this.valorCompra,
      valorVenda: vVenda ?? this.valorVenda,
      quantidade: quantidade ?? this.quantidade,
      validade: validade ?? this.validade,
    );
  }
}