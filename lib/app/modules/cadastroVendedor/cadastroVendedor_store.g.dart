// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastroVendedor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroVendedorStore on _CadastroVendedorStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CadastroVendedorStoreBase.isLoading', context: context);

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

  late final _$pessoaAtom =
      Atom(name: '_CadastroVendedorStoreBase.pessoa', context: context);

  @override
  Vendedor get pessoa {
    _$pessoaAtom.reportRead();
    return super.pessoa;
  }

  @override
  set pessoa(Vendedor value) {
    _$pessoaAtom.reportWrite(value, super.pessoa, () {
      super.pessoa = value;
    });
  }

  late final _$enderecoAtom =
      Atom(name: '_CadastroVendedorStoreBase.endereco', context: context);

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

  late final _$cadastrarVendedorAsyncAction = AsyncAction(
      '_CadastroVendedorStoreBase.cadastrarVendedor',
      context: context);

  @override
  Future<void> cadastrarVendedor(Vendedor vendedor, Endereco endereco) {
    return _$cadastrarVendedorAsyncAction
        .run(() => super.cadastrarVendedor(vendedor, endereco));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
pessoa: ${pessoa},
endereco: ${endereco}
    ''';
  }
}
