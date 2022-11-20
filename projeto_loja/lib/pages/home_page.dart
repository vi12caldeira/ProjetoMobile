import 'package:flutter/material.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distribuidora - Loja'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Produtos: ",
                style: TextStyle(color: Colors.black, fontSize: 21),
              ),
              ElevatedButton.icon(
                //refrigerante
                label: const Text('Produtos'),
                icon: Icon(Icons.fastfood),
                onPressed: () {
                  Navigator.pushNamed(context, "/cadProduto");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 209, 206, 51),
                    elevation: 15,
                    //padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
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
          Row(
            /* Item 1 */

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Francisco de Souza\n'
                    '   09/11/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/cliente1");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 209, 206, 51),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25, /*vertical: 15*/
                    ),
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            /* Item 2 */

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Raquel Albuquerque\n'
                    '   29/10/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/cliente2");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 209, 206, 51),
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            /* Item 3 */

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton.icon(
                label: const Text('Jairo Martins\n'
                    '   25/10/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/cliente3");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 209, 206, 51),
                    padding: EdgeInsets.symmetric(horizontal: 42),
                    textStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ],
          ),
        ],
      ),

      
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text('Vitoria'),
                accountEmail: Text('vitoria@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/bart.jpg'),
                ),
              ),
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
                leading: const Icon(Icons.library_add),
                title: const Text("Cadastrar loja"),
                subtitle: const Text("mais informações..."),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/cadastrarloja");
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
