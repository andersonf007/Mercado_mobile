import 'package:flutter_test/flutter_test.dart';
import 'package:mercado_poo/app//modules/cadastroVendedor/cadastroVendedor_store.dart';
 
void main() {
  late CadastroVendedorStore store;

  setUpAll(() {
    store = CadastroVendedorStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}