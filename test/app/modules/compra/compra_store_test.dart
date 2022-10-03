import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/compra/compra_store.dart';
 
void main() {
  late CompraStore store;

  setUpAll(() {
    store = CompraStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}