import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/cadastroProduto/cadastroProduto_store.dart';
 
void main() {
  late CadastroProdutoStore store;

  setUpAll(() {
    store = CadastroProdutoStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}