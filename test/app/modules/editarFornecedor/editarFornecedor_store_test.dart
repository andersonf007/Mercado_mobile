import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/editarFornecedor/editarFornecedor_store.dart';
 
void main() {
  late EditarFornecedorStore store;

  setUpAll(() {
    store = EditarFornecedorStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}