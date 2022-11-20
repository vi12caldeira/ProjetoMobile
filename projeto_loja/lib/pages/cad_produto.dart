import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/home_page.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';
import 'package:navegacao_drawer/pages/produto_page.dart';

class CadProdutoPage extends StatefulWidget {
  const CadProdutoPage({Key? key}) : super(key: key);

  @override
  _CadProdutoPageState createState() => _CadProdutoPageState();
}

class _CadProdutoPageState extends State<CadProdutoPage> {
  ProdutoDao db = ProdutoDao();
  List<Produto> _listaProdutos = [];

  @override
  void initState() {
    super.initState();
    atualizarListaProdutos();
    Produto p1 = Produto(1, 'Água mineral com gás', 1.5, 10);
    Produto p2 = Produto(2, 'Coca cola 600ml', 5.5, 20);
    Produto p3 = Produto(3, 'Redbull', 6.5, 5);
    db.insertProduto(p1);
    db.insertProduto(p2);
    db.insertProduto(p3);
    db.getProdutos().then((lista) {
      setState(() {
        _listaProdutos = lista;
      });
    });
  }

  void exibeProdutoPage([Produto? produto]) async {
    final produtoRecebido = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => ProdutoPage(produto: produto)));
    if (produtoRecebido != null) {
      if (produto != null) {
        await db.updateProduto(produtoRecebido);
      } else {
        await db.insertProduto(produtoRecebido);
      }
      atualizarListaProdutos();
    }
  }

  void atualizarListaProdutos() {
    db.getProdutos().then((lista) {
      setState(() {
        _listaProdutos = lista;
      });
    });
  }

  void removerProduto(idProduto) async {
    await db.deleteProduto(idProduto);
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
            return Dismissible(
              key: Key(DateTime.now().microsecondsSinceEpoch.toString()),
              direction: DismissDirection.startToEnd,
              background: Container(
                color: Color.fromARGB(255, 247, 171, 166),
                child: Align(
                  alignment: Alignment(-0.9, 0),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              onDismissed: (direcao) {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (inContext) {
                    return WillPopScope(
                      onWillPop: () async => false,
                      child: AlertDialog(
                        title: Text('Deseja mesmo excluir o produto?'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(inContext);
                              atualizarListaProdutos();
                            },
                            child: Text('Não'),
                          ),
                          TextButton(
                            onPressed: () {
                              removerProduto(_listaProdutos[index].id);
                              Navigator.pop(inContext);
                              atualizarListaProdutos();
                            },
                            child: Text('Sim'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                leading: Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.green,
                  size: 25,
                ),
                title: Text(_listaProdutos[index].nome!),
                subtitle: Text(
                    'R\$${_listaProdutos[index].preco!.toStringAsFixed(2)}'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  exibeProdutoPage(_listaProdutos[index]);
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          exibeProdutoPage();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
