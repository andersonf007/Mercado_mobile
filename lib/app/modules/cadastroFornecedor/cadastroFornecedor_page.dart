import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mercado_poo/app//modules/cadastroFornecedor/cadastroFornecedor_store.dart';
import 'package:flutter/material.dart';
import 'package:mercado_poo/app/models/endereco/endereco_models.dart';
import 'package:mercado_poo/app/models/fornecedor/fornecedor_models.dart';

class CadastroFornecedorPage extends StatefulWidget {
  final String title;
  const CadastroFornecedorPage({Key? key, this.title = 'CadastroFornecedorPage'}) : super(key: key);
  @override
  CadastroFornecedorPageState createState() => CadastroFornecedorPageState();
}
class CadastroFornecedorPageState extends State<CadastroFornecedorPage> {
  final CadastroFornecedorStore store = Modular.get();
TextEditingController textNome = TextEditingController();
  TextEditingController textCnpj = TextEditingController();
  TextEditingController texttelefone = TextEditingController();
  TextEditingController textEmail = TextEditingController();
  TextEditingController textLogradouro = TextEditingController();
  TextEditingController textCep = TextEditingController();
  TextEditingController textCidade = TextEditingController();
  TextEditingController textUf = TextEditingController();
  TextEditingController textBairro = TextEditingController();
  TextEditingController textNumero = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro Fornecedor'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Nome',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    child: TextField(
                      controller: textNome,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "nome",
                        contentPadding: EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: false,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Text('Cnpj',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    child: TextField(
                      controller: textCnpj,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Cnpj",
                        contentPadding: EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: false,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('Telefone',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                            Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        child: TextField(
                          controller: texttelefone,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                            hintText: "Telefone",
                            contentPadding: EdgeInsets.only(
                              left: 16,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                            ),
                          ),
                              ],
                        ),
                      ),
                    ],
                  ),
                  Text('Email',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    child: TextField(
                      controller: textEmail,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: false,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Text('Logradouro',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                      right: 16,
                      bottom: 8,
                    ),
                    width: double.maxFinite,
                    child: TextField(
                      controller: textLogradouro,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                        hintText: "Logradouro",
                        contentPadding: EdgeInsets.only(
                          left: 16,
                        ),
                      ),
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1,
                      minLines: 1,
                      maxLength: null,
                      obscureText: false,
                      showCursor: true,
                      autocorrect: false,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('Cep',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 1),
                            Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        child: TextField(
                          controller: textCep,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                            hintText: "Cep",
                            contentPadding: EdgeInsets.only(
                              left: 16,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                            ),
                          ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('Cidade',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 16,
                                top: 8,
                                right: 16,
                                bottom: 8,
                              ),
                              width: double.maxFinite,
                              child: TextField(
                                controller: textCidade,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  hintText: "Cidade",
                                  contentPadding: EdgeInsets.only(
                                    left: 16,
                                  ),
                                ),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                minLines: 1,
                                maxLength: null,
                                obscureText: false,
                                showCursor: true,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text('UF',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      maxLines: 1),
                            Container(
                        margin: const EdgeInsets.only(
                          left: 16,
                          top: 8,
                          right: 16,
                          bottom: 8,
                        ),
                        width: double.maxFinite,
                        child: TextField(
                          controller: textUf,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                            focusedBorder: OutlineInputBorder(),
                            hintText: "UF",
                            contentPadding: EdgeInsets.only(
                              left: 16,
                            ),
                          ),
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          minLines: 1,
                          maxLength: null,
                          obscureText: false,
                          showCursor: true,
                          autocorrect: false,
                            ),
                          ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text('Bairro',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 16,
                                top: 8,
                                right: 16,
                                bottom: 8,
                              ),
                              width: double.maxFinite,
                              child: TextField(
                                controller: textBairro,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  hintText: "Bairro",
                                  contentPadding: EdgeInsets.only(
                                    left: 16,
                                  ),
                                ),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                minLines: 1,
                                maxLength: null,
                                obscureText: false,
                                showCursor: true,
                                autocorrect: false,
                              ),
                            ),
                            Text('Numero',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            textAlign: TextAlign.left,
                            maxLines: 1),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 16,
                                top: 8,
                                right: 16,
                                bottom: 8,
                              ),
                              width: double.maxFinite,
                              child: TextField(
                                controller: textNumero,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(),
                                  hintText: "Numero",
                                  contentPadding: EdgeInsets.only(
                                    left: 16,
                                  ),
                                ),
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                minLines: 1,
                                maxLength: null,
                                obscureText: false,
                                showCursor: true,
                                autocorrect: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Observer(builder: (context) {
                    if (store.isLoading)
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    return ElevatedButton(
                      onPressed: (){
                        //String data = DateFormat("dd/MM/yyyy").format(textDataNascimento.text);
                        store.cadastrarFornecedor(
                          Fornecedor(
                            nomeFornecedor: textNome.text,
                            cnpjFornecedor: textCnpj.text,
                            telefoneFornecedor: texttelefone.text,
                            emailFornecedor: textEmail.text,
                            enderecoFornecedor: Endereco(
                              logradouro: textLogradouro.text,
                              cep: textCep.text,
                              cidade: textCidade.text,
                              uf: textUf.text,
                              bairro: textBairro.text,
                              numero: textNumero.text
                            ),
                          ),
                          
                        ).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(error.toString())));
                          store.isLoading = false;
                        });
                      },
                      child: Text('Salvar'),
                    );
                     }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}