import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/editarCliente/editarCliente_store.dart';
 
void main() {
  late EditarClienteStore store;

  setUpAll(() {
    store = EditarClienteStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}