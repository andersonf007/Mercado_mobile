// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignupStore on _SignupStoreBase, Store {
  late final _$companyAtom =
      Atom(name: '_SignupStoreBase.company', context: context);

  @override
  List<ConfigModels> get company {
    _$companyAtom.reportRead();
    return super.company;
  }

  @override
  set company(List<ConfigModels> value) {
    _$companyAtom.reportWrite(value, super.company, () {
      super.company = value;
    });
  }

  late final _$isloadingAtom =
      Atom(name: '_SignupStoreBase.isloading', context: context);

  @override
  bool get isloading {
    _$isloadingAtom.reportRead();
    return super.isloading;
  }

  @override
  set isloading(bool value) {
    _$isloadingAtom.reportWrite(value, super.isloading, () {
      super.isloading = value;
    });
  }

  late final _$isEqualsAtom =
      Atom(name: '_SignupStoreBase.isEquals', context: context);

  @override
  bool get isEquals {
    _$isEqualsAtom.reportRead();
    return super.isEquals;
  }

  @override
  set isEquals(bool value) {
    _$isEqualsAtom.reportWrite(value, super.isEquals, () {
      super.isEquals = value;
    });
  }

  late final _$sendConfigAsyncAction =
      AsyncAction('_SignupStoreBase.sendConfig', context: context);

  @override
  Future<bool> sendConfig(ConfigModels params, String name) {
    return _$sendConfigAsyncAction.run(() => super.sendConfig(params, name));
  }

  @override
  String toString() {
    return '''
company: ${company},
isloading: ${isloading},
isEquals: ${isEquals}
    ''';
  }
}
