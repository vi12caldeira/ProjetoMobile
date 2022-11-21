import 'package:flutter/material.dart';
import 'package:navegacao_drawer/models/produto.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/repository/categoriaDAO.dart';
import 'package:navegacao_drawer/models/categoria.dart';

class CadProdutoPage extends StatefulWidget {
  const CadProdutoPage({Key? key, Produto? produto}) : super(key: key);

  @override
  _CadProdutoPageState createState() => _CadProdutoPageState();
}

class _CadProdutoPageState extends State<CadProdutoPage> {
  ProdutoDao db = ProdutoDao();
  List<Produto> _listaProdutos = [];

  @override
  void initState() {
    super.initState();
    Produto p1 = Produto(1, 'Água mineral com gás 500ml', 1.5, 10);
    Produto p2 = Produto(2, 'Coca cola 600ml', 8.98, 20);
    Produto p3 = Produto(3, 'Fanta Laranja 2l', 7.00, 5);
    Produto p4 = Produto(4, 'Redbull 350ml', 7.10, 5);
    Produto p5 = Produto(5, 'Monster Ultra 473ml', 8.70, 5);
    Produto p6 = Produto(6, 'Vinho Pergola 1l', 19.90, 5);
    Produto p7 = Produto(7, 'Cachaca Seleta 1l', 39, 5);
    Produto p8 = Produto(8, 'Whisky Red Label 1l', 109.09, 5);

    db.insertProduto(p1);
    db.insertProduto(p2);
    db.insertProduto(p3);
    db.insertProduto(p4);
    db.insertProduto(p5);
    db.insertProduto(p6);
    db.insertProduto(p7);
    db.insertProduto(p8);

    db.getProdutos().then((lista) {
      setState(() {
        _listaProdutos = lista;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _listaProdutos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(
                Icons.check_circle_outline_rounded,
                color: Colors.green,
                size: 25,
              ),
              title: Text(_listaProdutos[index].nome!),
              subtitle:
                  Text('R\$${_listaProdutos[index].preco!.toStringAsFixed(2)}'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            );
          }),
    );
  }
}
