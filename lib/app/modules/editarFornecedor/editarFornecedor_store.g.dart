// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editarFornecedor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditarFornecedorStore on _EditarFornecedorStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_EditarFornecedorStoreBase.isLoading', context: context);

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

  late final _$listFornecedorAtom =
      Atom(name: '_EditarFornecedorStoreBase.listFornecedor', context: context);

  @override
  List<Fornecedor> get listFornecedor {
    _$listFornecedorAtom.reportRead();
    return super.listFornecedor;
  }

  @override
  set listFornecedor(List<Fornecedor> value) {
    _$listFornecedorAtom.reportWrite(value, super.listFornecedor, () {
      super.listFornecedor = value;
    });
  }

  late final _$idFornecedorAtom =
      Atom(name: '_EditarFornecedorStoreBase.idFornecedor', context: context);

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

  late final _$buscarFornecedoresAsyncAction = AsyncAction(
      '_EditarFornecedorStoreBase.buscarFornecedores',
      context: context);

  @override
  Future<void> buscarFornecedores() {
    return _$buscarFornecedoresAsyncAction
        .run(() => super.buscarFornecedores());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listFornecedor: ${listFornecedor},
idFornecedor: ${idFornecedor}
    ''';
  }
}
