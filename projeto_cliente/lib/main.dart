import 'package:flutter/material.dart';
import 'package:navegacao_drawer/models/categoria.dart';
import 'package:navegacao_drawer/models/produto.dart';
import 'package:navegacao_drawer/repository/categoriaDAO.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/routes.dart';

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  ProdutoDao db = ProdutoDao();
  CategoriaDAO db_cat = CategoriaDAO();

  Categoria c1 = Categoria(1, "refri");
  Categoria c2 = Categoria(2, "Cerveja");
  Categoria c3 = Categoria(3, "Whisky");
  Categoria c4 = Categoria(4, "Cachaça");

  db_cat.insertCategoria(c1);
  db_cat.insertCategoria(c2);
  db_cat.insertCategoria(c3);
  db_cat.insertCategoria(c4);

  Produto p1 = Produto(1, 'Água mineral com gás', 1.5, 10, 1);
  Produto p2 = Produto(2, 'Coca cola 600ml', 5.5, 20, 2);
  Produto p3 = Produto(3, 'Redbull', 6.5, 5, 3);
  Produto p4 = Produto(4, 'Hamburguer Zoin', 6.5, 5, 4);
  Produto p5 = Produto(5, 'Pão de queijo', 6.5, 5, 5);
  db.insertProduto(p1);
  db.insertProduto(p2);
  db.insertProduto(p3);
  db.insertProduto(p4);
  db.insertProduto(p5);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: routes(),
    );
  }
}
