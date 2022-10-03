import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/editarVendedor/editarVendedor_store.dart';
 
void main() {
  late EditarVendedorStore store;

  setUpAll(() {
    store = EditarVendedorStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}