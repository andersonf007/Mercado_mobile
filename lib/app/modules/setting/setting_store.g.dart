// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingStore on _SettingStoreBase, Store {
  late final _$companyAtom =
      Atom(name: '_SettingStoreBase.company', context: context);

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

  late final _$isLoadingAtom =
      Atom(name: '_SettingStoreBase.isLoading', context: context);

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

  late final _$getAllloginsAsyncAction =
      AsyncAction('_SettingStoreBase.getAlllogins', context: context);

  @override
  Future<void> getAlllogins() {
    return _$getAllloginsAsyncAction.run(() => super.getAlllogins());
  }

  @override
  String toString() {
    return '''
company: ${company},
isLoading: ${isLoading}
    ''';
  }
}
