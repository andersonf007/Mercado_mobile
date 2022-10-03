import 'package:json_annotation/json_annotation.dart';
import 'package:mercado_poo/app/models/ProdutoVenda/produtoVenda.dart';
import 'package:mercado_poo/app/models/pessoa/pessoa_models.dart';
import 'package:mercado_poo/app/models/produto/produto_models.dart';
import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';

part 'venda_models.g.dart';

@JsonSerializable()
class Venda{
  int? id;
  String? horaVenda;
  double? valorTotal;
  String? formaPagamento;
  Pessoa? clienteVenda;
  Vendedor? vendedorVenda;
  List<ProdutoVenda>? produtosVenda;
  //List<VendaItens>? listVendaItens;
  Venda({
    this.formaPagamento,
    this.horaVenda,
    this.id,
    this.valorTotal,
    //this.listVendaItens,
    this.clienteVenda,
    this.produtosVenda,
    this.vendedorVenda
  });
 factory Venda.fromJson(Map<String, dynamic> json) =>
      _$VendaFromJson(json);
  Map<String, dynamic> toJson() => _$VendaToJson(this);

  Venda copywith({
    int? id,
    String? horaVenda,
    double? valorTotal,
    String? formaPagamento,
    //List<VendaItens>? listVendaItens,
    Pessoa? clienteVenda,
    Vendedor? vendedorVenda,
    List<ProdutoVenda>? produtosVenda,
  }){
    return Venda(
      id: id ?? this.id,
      formaPagamento: formaPagamento ?? this.formaPagamento,
      horaVenda: horaVenda ?? this.horaVenda,
      valorTotal: valorTotal ?? this.valorTotal,
      //listVendaItens: listVendaItens ?? this.listVendaItens,
      clienteVenda: clienteVenda ?? this.clienteVenda,
      vendedorVenda: vendedorVenda ?? this.vendedorVenda,
      produtosVenda: produtosVenda ?? this.produtosVenda,
    );
  }
}