import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercado_poo/app//modules/venda/venda_store.dart';

class ListagemProduto extends StatefulWidget {
  ListagemProduto();

  @override
  State<ListagemProduto> createState() => _ListagemProdutoState();
}

class _ListagemProdutoState extends State<ListagemProduto> {
  final VendaStore store = Modular.get();
  TextEditingController textProduto = TextEditingController();
  TextEditingController textQuantidade = TextEditingController();
  @override
  void initState() {
    super.initState();
    store.buscarTodosProdutos();
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              top: 8,
              right: 16,
              bottom: 8,
            ),
            width: double.maxFinite,
            child: TextField(
              controller: textProduto,
              onChanged: store.getDocumentsBySearch,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Procure seu produto",
                contentPadding: EdgeInsets.only(
                  left: 16,
                ),
              ),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              textAlign: TextAlign.left,
              maxLines: 1,
              minLines: 1,
              maxLength: null,
              obscureText: false,
              showCursor: true,
              autocorrect: false,
            ),
          ),
          Observer(
            builder: (context) {
              if (store.isLoading) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (store.error.isNotEmpty) {
                return Center(
                  child: Text('Erro ao buscar lista de produtos'),
                );
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: store.resultList.length,
                  itemBuilder: (context, index) {
                    var product = store.resultList[index];
                    return GestureDetector(
                      onTap: () async {
                        bool deuErro = false;
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            actions: [
                              Column(
                                children: [
                                  TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(
                                              RegExp(r'[-, ]')),
                                        ],
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                        controller: textQuantidade,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          enabledBorder: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(),
                                          hintText: "Quantidade",
                                          contentPadding: EdgeInsets.only(
                                            left: 16,
                                          ),
                                        ),
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                        textAlign: TextAlign.left,
                                        maxLines: 1,
                                        minLines: 1,
                                        maxLength: null,
                                        obscureText: false,
                                        showCursor: true,
                                        autocorrect: false,
                                      ),
                                  ElevatedButton(
                                    onPressed: () async{
                                      await store.adicionarNaListaDeVenda(product, int.parse(textQuantidade.text));
                                      Modular.to.pop();
                                      Modular.to.pop();
                                    }, 
                                    child: Text('Salvar')
                                  ),
                                ],
                              )
                            ],
                          )
                        );
                        /*await store.buscarProduto(store.resultList[index].id!)
                            .onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Erro ao buscar o produto ${store.resultList[index].nome}')));
                          deuErro = true;
                          store.isLoading = false;
                        });
                        if (!deuErro) {
                          Modular.to.pushNamed('/product/productDetail');
                        }*/
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text(product.nome ?? '')),
                              Text('R\$ ${product.valorVenda!.toStringAsFixed(2)}')
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
 
/*  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 16,
              top: 8,
              right: 16,
              bottom: 8,
            ),
            width: double.maxFinite,
            child: TextField(
              controller: textProduto,
              onChanged: store.getDocumentsBySearch,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Procure seu produto",
                contentPadding: EdgeInsets.only(
                  left: 16,
                ),
              ),
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              textAlign: TextAlign.left,
              maxLines: 1,
              minLines: 1,
              maxLength: null,
              obscureText: false,
              showCursor: true,
              autocorrect: false,
            ),
          ),
          Observer(
            builder: (context) {
              if (store.isLoadingProduto) 
                return Center(
                  child: CircularProgressIndicator(),
                );
              return Expanded(
                child: ListView.builder(
                  itemCount: store.resultList.length,
                  itemBuilder: (context, index) {
                    var produto = store.resultList[index];
                    return GestureDetector(
                      onTap: () async {
                        bool deuErro = false;
                        await store.buscarProduto(store.resultList[index].id!)
                            .onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Erro ao buscar o produto ${store.resultList[index].nome}')));
                          deuErro = true;
                          store.isLoadingProduto = false;
                        });
                        if (!deuErro) {
                          //Modular.to.pushNamed('/product/productDetail');
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(child: Text(produto.nome ?? '')),
                              Text('R\$ ${produto.valorVenda!.toStringAsFixed(2)}')
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}*/