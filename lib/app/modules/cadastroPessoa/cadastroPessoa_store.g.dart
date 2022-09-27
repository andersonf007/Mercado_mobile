// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastroPessoa_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroPessoaStore on _CadastroPessoaStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CadastroPessoaStoreBase.isLoading', context: context);

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
      Atom(name: '_CadastroPessoaStoreBase.pessoa', context: context);

  @override
  Pessoa get pessoa {
    _$pessoaAtom.reportRead();
    return super.pessoa;
  }

  @override
  set pessoa(Pessoa value) {
    _$pessoaAtom.reportWrite(value, super.pessoa, () {
      super.pessoa = value;
    });
  }

  late final _$enderecoAtom =
      Atom(name: '_CadastroPessoaStoreBase.endereco', context: context);

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

  late final _$cadastrarPessoaAsyncAction =
      AsyncAction('_CadastroPessoaStoreBase.cadastrarPessoa', context: context);

  @override
  Future<void> cadastrarPessoa(Pessoa pessoa) {
    return _$cadastrarPessoaAsyncAction
        .run(() => super.cadastrarPessoa(pessoa));
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
