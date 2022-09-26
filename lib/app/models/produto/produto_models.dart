import 'package:json_annotation/json_annotation.dart';

part 'produto_models.g.dart';

@JsonSerializable()
class Produto{

  int? id;
  String? nome;
  String? categoria;
  double? vCompra;
  double? vVenda;
  int? quantidade;
  String? validade;

  Produto({
    this.id,
    this.nome,
    this.categoria,
    this.quantidade,
    this.vCompra,
    this.vVenda,
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
      vCompra: vCompra ?? this.vCompra,
      vVenda: vVenda ?? this.vVenda,
      quantidade: quantidade ?? this.quantidade,
      validade: validade ?? this.validade,
    );
  }
}