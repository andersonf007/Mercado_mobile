import 'package:flutter_modular/flutter_modular.dart';
import 'package:mercado_poo/app/modules/cadastroFornecedor/cadastroFornecedor_module.dart';
import 'package:mercado_poo/app/modules/cadastroPessoa/cadastroPessoa_module.dart';
import 'package:mercado_poo/app/modules/cadastroProduto/cadastroProduto_module.dart';
import 'package:mercado_poo/app/modules/cadastroVendedor/cadastroVendedor_module.dart';
import 'package:mercado_poo/app/modules/home/home_module.dart';
import 'package:mercado_poo/app/modules/setting/setting_module.dart';
import 'package:mercado_poo/app/modules/signin/signin_module.dart';
import 'package:mercado_poo/app/modules/signup/signup_module.dart';
import 'package:mercado_poo/app/modules/venda/venda_module.dart';
import 'package:mercado_poo/app/repositorios/IHttpService.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => IHttpService(),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute,  module: SigninModule()),
    ModuleRoute('/settings', module: SettingModule()),
    ModuleRoute('/signup', module: SignupModule()),
    ModuleRoute('/signin', module: SigninModule()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/cadastroPessoa', module: CadastroPessoaModule()),
    ModuleRoute('/cadastrarFornecedor', module: CadastroFornecedorModule()),
    ModuleRoute('/cadastroVendedor', module: CadastroVendedorModule()),
    ModuleRoute('/cadastroProduto', module: CadastroProdutoModule()),
    ModuleRoute('/venda', module: VendaModule(),)
  ];

}