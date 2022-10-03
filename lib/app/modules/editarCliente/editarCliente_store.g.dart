// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editarCliente_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditarClienteStore on _EditarClienteStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_EditarClienteStoreBase.isLoading', context: context);

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

  late final _$listClienteAtom =
      Atom(name: '_EditarClienteStoreBase.listCliente', context: context);

  @override
  List<Pessoa> get listCliente {
    _$listClienteAtom.reportRead();
    return super.listCliente;
  }

  @override
  set listCliente(List<Pessoa> value) {
    _$listClienteAtom.reportWrite(value, super.listCliente, () {
      super.listCliente = value;
    });
  }

  late final _$buscarClientesAsyncAction =
      AsyncAction('_EditarClienteStoreBase.buscarClientes', context: context);

  @override
  Future<void> buscarClientes() {
    return _$buscarClientesAsyncAction.run(() => super.buscarClientes());
  }

  late final _$editarClientesAsyncAction =
      AsyncAction('_EditarClienteStoreBase.editarClientes', context: context);

  @override
  Future<void> editarClientes(Pessoa cliente) {
    return _$editarClientesAsyncAction.run(() => super.editarClientes(cliente));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listCliente: ${listCliente}
    ''';
  }
}
