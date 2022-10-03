// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editarProduto_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditarProdutoStore on _EditarProdutoStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_EditarProdutoStoreBase.isLoading', context: context);

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
      Atom(name: '_EditarProdutoStoreBase.listProduto', context: context);

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

  late final _$buscarProdutosAsyncAction =
      AsyncAction('_EditarProdutoStoreBase.buscarProdutos', context: context);

  @override
  Future<void> buscarProdutos() {
    return _$buscarProdutosAsyncAction.run(() => super.buscarProdutos());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listProduto: ${listProduto}
    ''';
  }
}
