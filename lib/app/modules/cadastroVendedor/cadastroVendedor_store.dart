import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/vendedor/vendedor_models.dart';
import 'package:mercado_poo/app/repositorios/vendedor_repositorio.dart';
import 'package:mobx/mobx.dart';

part 'cadastroVendedor_store.g.dart';

class CadastroVendedorStore = _CadastroVendedorStoreBase with _$CadastroVendedorStore;
abstract class _CadastroVendedorStoreBase with Store {

  VendedorRepositorio vendedorRepositorio;
  _CadastroVendedorStoreBase({required this.vendedorRepositorio});

  @observable
  bool isLoading = false;
  
  @observable
  Vendedor pessoa = Vendedor();

  @observable
  Endereco endereco = Endereco();

  @action
  Future<void> cadastrarVendedor(Vendedor vendedor) async{
    try{
      isLoading = true;
      //await enderecoRepositorio.cadastrarEndereco(endereco);
      await vendedorRepositorio.cadastrarVendedor(vendedor);
      isLoading = false;
    }catch(e){
      isLoading = false;
      return Future.error(e);
    }
  }
}