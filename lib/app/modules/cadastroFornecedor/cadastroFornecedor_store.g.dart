// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastroFornecedor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroFornecedorStore on _CadastroFornecedorStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CadastroFornecedorStoreBase.isLoading', context: context);

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

  late final _$fornecedorAtom =
      Atom(name: '_CadastroFornecedorStoreBase.fornecedor', context: context);

  @override
  Fornecedor get fornecedor {
    _$fornecedorAtom.reportRead();
    return super.fornecedor;
  }

  @override
  set fornecedor(Fornecedor value) {
    _$fornecedorAtom.reportWrite(value, super.fornecedor, () {
      super.fornecedor = value;
    });
  }

  late final _$enderecoAtom =
      Atom(name: '_CadastroFornecedorStoreBase.endereco', context: context);

  @override
  Endereco get endereco {
    _$enderecoAtom.reportRead();
    return super.endereco;
  }

  @override
  set endereco(Endereco value) {
    _$enderecoAtom.reportWrite(value, super.endereco, () {
      super.endereco = value;
    });
  }

  late final _$cadastrarFornecedorAsyncAction = AsyncAction(
      '_CadastroFornecedorStoreBase.cadastrarFornecedor',
      context: context);

  @override
  Future<void> cadastrarFornecedor(Fornecedor fornecedoro) {
    return _$cadastrarFornecedorAsyncAction
        .run(() => super.cadastrarFornecedor(fornecedoro));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
fornecedor: ${fornecedor},
endereco: ${endereco}
    ''';
  }
}
