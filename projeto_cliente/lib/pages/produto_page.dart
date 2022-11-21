import 'package:flutter/material.dart';

import '../models/produto.dart';

class ProdutoPage extends StatefulWidget {
  final Produto? produto;
  const ProdutoPage({Key? key, this.produto}) : super(key: key);
  @override
  _ProdutoPageState createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  late Produto _produto;

  @override
  void initState() {
    super.initState();
    _produto = Produto.fromMap(widget.produto!.toMap());
  }

  void exibeProdutoPage([Produto? produto]) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProdutoPage(produto: produto)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produto'), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_produto.id.toString()),
            Text(_produto.nome!),
            Text(_produto.preco.toString()),
          ],
        ),
      ),
    );
  }
}
