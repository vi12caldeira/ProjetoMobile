import 'package:flutter/material.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        
        children: [
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 10,
                child: Text("Produtos: ",
                  textAlign: TextAlign.left,
                
                
              ),),
              
              ElevatedButton.icon( //refrigerante
                label: const Text('Refrigerante'),
                icon: Icon(Icons.fastfood),
                onPressed: () {
                  Navigator.pushNamed(context, "/refrigerante");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                     elevation: 15,
                    //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 15,)),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(children: [
            Container(
              /*width: 180,
              height: 150,*/
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                
                    "Últimas compras:\n",
                style: TextStyle(color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ]),
          Row(/* Item 1 */
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Bebidas do seu Zé\n'
                    '   09/11/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/pedidos1");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 25, /*vertical: 15*/),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row( /* Item 2 */
           
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Butequin do Carlos\n'
                    '   29/10/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/pedidos2");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row( /* Item 3 */
           
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Disk Bebidas\n'
                    '   25/10/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/pedidos3");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 42),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),
            ],
          ),
          
        ],
      ),
      
/*class HomePage extends StatefulWidget {
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
      appBar: AppBar(
        title: const Text ('Distribuidora'),
        centerTitle: true,
      ),
      body: 
      Column(children: [
        ListView.builder(
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
          }),*/
/*
          Column(/* Item 1 */
            
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  padding: EdgeInsets.only(left: 22),
                  width: 1000,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: (
                      Text("Bebidas do seu Zé\n",

                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                          ),
                          //textAlign: TextAlign.center,
                      )
                  )
              ),
            ],
          ),
          Column( //item 2
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  padding: EdgeInsets.only(left: 22),
                  width: 1000,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: (
                      Text("Butequin do Carlos\n",

                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                        //textAlign: TextAlign.center,
                      )
                  )
              ),

            ],
          ),
          Column( /* Item 3 */
           
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  padding: EdgeInsets.only(left: 22),
                  width: 1000,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      bottom: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                      left: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //Borderside
                      right: BorderSide(
                          width: 1,
                          color: Colors.black12,
                          style: BorderStyle.solid), //BorderSide
                    ),
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  child: (
                      Text("Disk Bebidas\n",

                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Montserrat',
                        ),
                        //textAlign: TextAlign.center,
                      )
                  )
              ),
            ],
          ),
        
        ],
      ),*/
      
      
    
    
    
    drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
             /*const UserAccountsDrawerHeader(
                accountName: Text('Seu nome e sobrenome'),
                accountEmail: Text('seuemail@mail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bart.jpg'),
                ),
              ),*/
              ListTile(
                leading: const Icon(Icons.receipt_long),
                title: const Text("Pedidos"),
                subtitle: const Text("mais informações..."),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/pedidos");
                },
              ),
              ListTile(
                leading: const Icon(Icons.call_to_action_outlined),
                title: const Text("Cupons"),
                subtitle: const Text("mais informações..."),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cupons");
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_card),
                title: const Text("Cartões"),
                subtitle: const Text("mais informações..."),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cartoes");
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Logout"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/");
                },
              ),
            ],
          ),
        ),
      ),
    
    
    
    
    
    
    );
    
  }
}
