import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/cadastroPessoa/cadastroPessoa_store.dart';
 
void main() {
  late CadastroPessoaStore store;

  setUpAll(() {
    store = CadastroPessoaStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}