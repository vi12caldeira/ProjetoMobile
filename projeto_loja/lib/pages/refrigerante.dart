import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/home_page.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';

class RefrigerantePage extends StatefulWidget {
  const RefrigerantePage({Key? key}) : super(key: key);

  @override
  _RefrigerantePageState createState() => _RefrigerantePageState();
}

class _RefrigerantePageState extends State<RefrigerantePage> {
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
        appBar: AppBar(
          title: const Text('Refrigerantes'),
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
          }),);
  }

  /*Widget _inforRefri() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          /* Item 1 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                padding: EdgeInsets.only(left: 22),
                width: 1000,
                height: 62,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                    bottom: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                    left: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //Borderside
                    right: BorderSide(
                        width: 2,
                        color: Colors.black12,
                        style: BorderStyle.solid), //BorderSide
                  ),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: (Text(
                    "Sukita uva\n"
                    "  RS 3,50",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Montserrat',
                    )))),
          ],
        ),
        Column(
          /* Item 2 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Sukita laranja\n"
                  "  RS 3,50",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 3 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Guarana 2l\n"
                  "  RS 5,98",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 4 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Guarana 1,5l\n"
                  "  RS 3,98",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 5 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Coca cola 2l\n"
                  "  RS 8,90",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 6 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Coca-cola 1,5l\n"
                  "  RS 5,98",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 7 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Guarapan 2l\n"
                  "  RS 4,60",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 8 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Fanta laranja\n"
                  "  RS 6,00",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
        Column(
          /* Item 9 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 22),
              width: 1000,
              height: 62,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  bottom: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                  left: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //Borderside
                  right: BorderSide(
                      width: 2,
                      color: Colors.black12,
                      style: BorderStyle.solid), //BorderSide
                ),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Text(
                  "Fanta Uva\n"
                  "  RS 6,00",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ],
        ),
      ],
    );
  }*/
}
