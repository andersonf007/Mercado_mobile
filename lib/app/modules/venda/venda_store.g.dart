// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venda_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VendaStore on _VendaStoreBase, Store {
  late final _$listVendaItemAtom =
      Atom(name: '_VendaStoreBase.listVendaItem', context: context);

  @override
  List<VendaItens> get listVendaItem {
    _$listVendaItemAtom.reportRead();
    return super.listVendaItem;
  }

  @override
  set listVendaItem(List<VendaItens> value) {
    _$listVendaItemAtom.reportWrite(value, super.listVendaItem, () {
      super.listVendaItem = value;
    });
  }

  late final _$listProdutoAtom =
      Atom(name: '_VendaStoreBase.listProduto', context: context);

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
      Atom(name: '_VendaStoreBase.resultList', context: context);

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
      Atom(name: '_VendaStoreBase.produto', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_VendaStoreBase.isLoading', context: context);

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

  late final _$errorAtom =
      Atom(name: '_VendaStoreBase.error', context: context);

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  late final _$buscarTodosProdutosAsyncAction =
      AsyncAction('_VendaStoreBase.buscarTodosProdutos', context: context);

  @override
  Future<void> buscarTodosProdutos() {
    return _$buscarTodosProdutosAsyncAction
        .run(() => super.buscarTodosProdutos());
  }

  late final _$buscarProdutoAsyncAction =
      AsyncAction('_VendaStoreBase.buscarProduto', context: context);

  @override
  Future<void> buscarProduto(int id) {
    return _$buscarProdutoAsyncAction.run(() => super.buscarProduto(id));
  }

  late final _$adicionarNaListaDeVendaAsyncAction =
      AsyncAction('_VendaStoreBase.adicionarNaListaDeVenda', context: context);

  @override
  Future<void> adicionarNaListaDeVenda(Produto produto, int quantidade) {
    return _$adicionarNaListaDeVendaAsyncAction
        .run(() => super.adicionarNaListaDeVenda(produto, quantidade));
  }

  late final _$_VendaStoreBaseActionController =
      ActionController(name: '_VendaStoreBase', context: context);

  @override
  void getDocumentsBySearch(String value) {
    final _$actionInfo = _$_VendaStoreBaseActionController.startAction(
        name: '_VendaStoreBase.getDocumentsBySearch');
    try {
      return super.getDocumentsBySearch(value);
    } finally {
      _$_VendaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listVendaItem: ${listVendaItem},
listProduto: ${listProduto},
resultList: ${resultList},
produto: ${produto},
isLoading: ${isLoading},
error: ${error}
    ''';
  }
}
