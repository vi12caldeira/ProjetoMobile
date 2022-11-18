import 'package:flutter/material.dart';
import 'package:navegacao_drawer/repository/produtoDAO.dart';
import 'package:navegacao_drawer/models/produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distribuidora - Cliente'),
        centerTitle: true,
        ),
      body:
      Column(
        
        children: [
          Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Produtos:",
                style: TextStyle(color: Colors.black, fontSize: 21),),
              ElevatedButton.icon( //refrigerante
                label: const Text('Produtos'),
                icon: Icon(Icons.fastfood),
                onPressed: () {
                  Navigator.pushNamed(context, "/refrigerante");
                },
                style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(234, 133, 42, 128),
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
                
                    "Últimas compras:",
                style: TextStyle(color: Colors.black, fontSize: 21),
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
                    primary: Color.fromARGB(234, 133, 42, 128),
                    padding: EdgeInsets.symmetric(horizontal: 10, /*vertical: 15*/),
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
                    primary: Color.fromARGB(234, 133, 42, 128),
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                    primary: Color.fromARGB(234, 133, 42, 128),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    textStyle: TextStyle(
                      fontSize: 15,)),
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
                accountName: Text('Seu nome e sobrenome'),
                accountEmail: Text('seuemail@mail.com'),
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
