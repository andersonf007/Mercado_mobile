import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/venda/venda_store.dart';
 
void main() {
  late VendaStore store;

  setUpAll(() {
    store = VendaStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}