import 'package:flutter/material.dart';
import 'cad_produto.dart';
import '../models/produto.dart';

class ProdutoPage extends StatefulWidget {
  final Produto? produto;
  const ProdutoPage({Key? key, this.produto}) : super(key: key);
  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  late Produto _editarProduto;
  bool editado = false;
  final _nomeController = TextEditingController();
  final _precoController = TextEditingController();
  final _quantidadeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.produto == null) {
      _editarProduto = Produto(null, '', 0, 0);
    } else {
      _editarProduto = Produto.fromMap(widget.produto!.toMap());
      _nomeController.text = _editarProduto.nome!;
      _precoController.text = _editarProduto.preco!.toStringAsFixed(2);
      _quantidadeController.text = _editarProduto.quantidade.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _editarProduto.nome == ''
              ? 'Novo Produto'
              : (_editarProduto.nome).toString(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
            //key: _formKey,
            child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: _nomeController,
                onChanged: (nome) {
                  editado = true;
                  setState(() {
                    _editarProduto.nome = nome;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Nome do Produto',
                  hintText: 'Entre com o nome do produto',
                  border: OutlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                controller: _precoController,
                onChanged: (preco) {
                  editado = true;
                  _editarProduto.preco = double.parse(preco);
                },
                decoration: InputDecoration(
                  labelText: 'Preço',
                  hintText: 'Entre com o preço',
                  border: OutlineInputBorder(borderSide: BorderSide()),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.done,
                controller: _quantidadeController,
                onChanged: (quantidade) {
                  editado = true;
                  _editarProduto.quantidade = int.parse(quantidade);
                },
                decoration: InputDecoration(
                  labelText: 'Quantidade',
                  hintText: 'Entre com a quantidade',
                  border: OutlineInputBorder(borderSide: BorderSide()),
                ),
              ),
            ],
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          if ((_editarProduto.nome).toString().isEmpty ||
              _editarProduto.preco == 0 ||
              _editarProduto.quantidade == 0) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (inContext) {
                return WillPopScope(
                  onWillPop: () async => false,
                  child: AlertDialog(
                    title: Text(
                        'Todos os dados devem ser preenchidos e ou não devem ser nulos!'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(inContext);
                        },
                        child: Text('Ok'),
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            Navigator.pop(context, _editarProduto);
          }
        },
      ),
    );
  }
}
