import 'package:flutter/material.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProdutoDao db = ProdutoDao();
  List<Produto> _listaProdutos = [];

  @override
  void initState() {
    super.initState();
    Produto p1 = Produto(1, 'Água mineral com gás', 1.5, 10);
    Produto p2 = Produto(2, 'Coca cola 600ml', 5.5, 20);
    Produto p3 = Produto(3, 'Redbull', 6.5, 5);
    Produto p4 = Produto(4, 'Hamburguer Zoin', 6.5, 5);
    Produto p5 = Produto(5, 'Pão de queijo', 6.5, 5);
    db.insertProduto(p1);
    db.insertProduto(p2);
    db.insertProduto(p3);
    db.insertProduto(p4);
    db.insertProduto(p5);
    db.getProdutos().then((lista) {
      setState(() {
        _listaProdutos = lista;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
