// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editarVendedor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditarVendedorStore on _EditarVendedorStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_EditarVendedorStoreBase.isLoading', context: context);

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

  late final _$listVendedorAtom =
      Atom(name: '_EditarVendedorStoreBase.listVendedor', context: context);

  @override
  List<Vendedor> get listVendedor {
    _$listVendedorAtom.reportRead();
    return super.listVendedor;
  }

  @override
  set listVendedor(List<Vendedor> value) {
    _$listVendedorAtom.reportWrite(value, super.listVendedor, () {
      super.listVendedor = value;
    });
  }

  late final _$buscarVendedoresAsyncAction = AsyncAction(
      '_EditarVendedorStoreBase.buscarVendedores',
      context: context);

  @override
  Future<void> buscarVendedores() {
    return _$buscarVendedoresAsyncAction.run(() => super.buscarVendedores());
  }

  late final _$editarVendedorAsyncAction =
      AsyncAction('_EditarVendedorStoreBase.editarVendedor', context: context);

  @override
  Future<void> editarVendedor(Vendedor vendedor) {
    return _$editarVendedorAsyncAction
        .run(() => super.editarVendedor(vendedor));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listVendedor: ${listVendedor}
    ''';
  }
}
