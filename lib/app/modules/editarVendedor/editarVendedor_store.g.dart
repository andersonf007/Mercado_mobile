// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editarVendedor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditarVendedorStore on _EditarVendedorStoreBase, Store {
  late final _$valueAtom =
      Atom(name: '_EditarVendedorStoreBase.value', context: context);

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_EditarVendedorStoreBaseActionController =
      ActionController(name: '_EditarVendedorStoreBase', context: context);

  @override
  void increment() {
    final _$actionInfo = _$_EditarVendedorStoreBaseActionController.startAction(
        name: '_EditarVendedorStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_EditarVendedorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
