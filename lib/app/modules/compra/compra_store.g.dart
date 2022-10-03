// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompraStore on _CompraStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CompraStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$listProdutoAtom =
      Atom(name: '_CompraStoreBase.listProduto', context: context);

  @override
  List<Produto> get listProduto {
    _$listProdutoAtom.reportRead();
    return super.listProduto;
  }

  @override
  set listProduto(List<Produto> value) {
    _$listProdutoAtom.reportWrite(value, super.listProduto, () {
      super.listProduto = value;
    });
  }

  late final _$resultListAtom =
      Atom(name: '_CompraStoreBase.resultList', context: context);

  @override
  List<Produto> get resultList {
    _$resultListAtom.reportRead();
    return super.resultList;
  }

  @override
  set resultList(List<Produto> value) {
    _$resultListAtom.reportWrite(value, super.resultList, () {
      super.resultList = value;
    });
  }

  late final _$produtoAtom =
      Atom(name: '_CompraStoreBase.produto', context: context);

  @override
  Produto get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(Produto value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  late final _$listProdutoCompraAtom =
      Atom(name: '_CompraStoreBase.listProdutoCompra', context: context);

  @override
  List<ProdutoCompra> get listProdutoCompra {
    _$listProdutoCompraAtom.reportRead();
    return super.listProdutoCompra;
  }

  @override
  set listProdutoCompra(List<ProdutoCompra> value) {
    _$listProdutoCompraAtom.reportWrite(value, super.listProdutoCompra, () {
      super.listProdutoCompra = value;
    });
  }

  late final _$valorTotalCompraAtom =
      Atom(name: '_CompraStoreBase.valorTotalCompra', context: context);

  @override
  double get valorTotalCompra {
    _$valorTotalCompraAtom.reportRead();
    return super.valorTotalCompra;
  }

  @override
  set valorTotalCompra(double value) {
    _$valorTotalCompraAtom.reportWrite(value, super.valorTotalCompra, () {
      super.valorTotalCompra = value;
    });
  }

  late final _$isLoadingInserirCompraAtom =
      Atom(name: '_CompraStoreBase.isLoadingInserirCompra', context: context);

  @override
  bool get isLoadingInserirCompra {
    _$isLoadingInserirCompraAtom.reportRead();
    return super.isLoadingInserirCompra;
  }

  @override
  set isLoadingInserirCompra(bool value) {
    _$isLoadingInserirCompraAtom
        .reportWrite(value, super.isLoadingInserirCompra, () {
      super.isLoadingInserirCompra = value;
    });
  }

  late final _$compraAtom =
      Atom(name: '_CompraStoreBase.compra', context: context);

  @override
  Compra get compra {
    _$compraAtom.reportRead();
    return super.compra;
  }

  @override
  set compra(Compra value) {
    _$compraAtom.reportWrite(value, super.compra, () {
      super.compra = value;
    });
  }

  late final _$listFornecedoresAtom =
      Atom(name: '_CompraStoreBase.listFornecedores', context: context);

  @override
  List<Fornecedor> get listFornecedores {
    _$listFornecedoresAtom.reportRead();
    return super.listFornecedores;
  }

  @override
  set listFornecedores(List<Fornecedor> value) {
    _$listFornecedoresAtom.reportWrite(value, super.listFornecedores, () {
      super.listFornecedores = value;
    });
  }

  late final _$isLoadingFornecedorsAtom =
      Atom(name: '_CompraStoreBase.isLoadingFornecedors', context: context);

  @override
  bool get isLoadingFornecedors {
    _$isLoadingFornecedorsAtom.reportRead();
    return super.isLoadingFornecedors;
  }

  @override
  set isLoadingFornecedors(bool value) {
    _$isLoadingFornecedorsAtom.reportWrite(value, super.isLoadingFornecedors,
        () {
      super.isLoadingFornecedors = value;
    });
  }

  late final _$idFornecedorAtom =
      Atom(name: '_CompraStoreBase.idFornecedor', context: context);

  @override
  int get idFornecedor {
    _$idFornecedorAtom.reportRead();
    return super.idFornecedor;
  }

  @override
  set idFornecedor(int value) {
    _$idFornecedorAtom.reportWrite(value, super.idFornecedor, () {
      super.idFornecedor = value;
    });
  }

  late final _$buscarTodosProdutosAsyncAction =
      AsyncAction('_CompraStoreBase.buscarTodosProdutos', context: context);

  @override
  Future<void> buscarTodosProdutos() {
    return _$buscarTodosProdutosAsyncAction
        .run(() => super.buscarTodosProdutos());
  }

  late final _$buscarProdutoAsyncAction =
      AsyncAction('_CompraStoreBase.buscarProduto', context: context);

  @override
  Future<void> buscarProduto(int id) {
    return _$buscarProdutoAsyncAction.run(() => super.buscarProduto(id));
  }

  late final _$adicionarNaListaDeCompraAsyncAction = AsyncAction(
      '_CompraStoreBase.adicionarNaListaDeCompra',
      context: context);

  @override
  Future<void> adicionarNaListaDeCompra(Produto produto, int quantidade) {
    return _$adicionarNaListaDeCompraAsyncAction
        .run(() => super.adicionarNaListaDeCompra(produto, quantidade));
  }

  late final _$_CompraStoreBaseActionController =
      ActionController(name: '_CompraStoreBase', context: context);

  @override
  void getDocumentsBySearch(String value) {
    final _$actionInfo = _$_CompraStoreBaseActionController.startAction(
        name: '_CompraStoreBase.getDocumentsBySearch');
    try {
      return super.getDocumentsBySearch(value);
    } finally {
      _$_CompraStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listProduto: ${listProduto},
resultList: ${resultList},
produto: ${produto},
listProdutoCompra: ${listProdutoCompra},
valorTotalCompra: ${valorTotalCompra},
isLoadingInserirCompra: ${isLoadingInserirCompra},
compra: ${compra},
listFornecedores: ${listFornecedores},
isLoadingFornecedors: ${isLoadingFornecedors},
idFornecedor: ${idFornecedor}
    ''';
  }
}
