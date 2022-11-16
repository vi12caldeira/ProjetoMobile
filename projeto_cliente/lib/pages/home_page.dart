import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distribuidora'),
        centerTitle: true,
      ),
      body:
      Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                label: const Text('Refrigerante'),
                icon: Icon(Icons.fastfood),
                onPressed: () {
                  Navigator.pushNamed(context, "/refrigerante");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    textStyle: TextStyle(
                        fontSize: 15,)),
              ),
              ElevatedButton.icon(
                label: const Text('Cervejas'),
                icon: Icon(Icons.fastfood),
                onPressed: () {
                  Navigator.pushNamed(context, "/cerveja");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),
              ElevatedButton.icon(
                label: const Text('Vinhos'),
                icon: Icon(Icons.local_bar),
                onPressed: () {
                  Navigator.pushNamed(context, "/vinho");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15)),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
              label: const Text('Energetico'),
              icon: Icon(Icons.fastfood_outlined),
              onPressed: () {
                Navigator.pushNamed(context, "/energetico");
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: TextStyle(
                    fontSize: 15,
                  )
               ),),
              ElevatedButton.icon(
                label: const Text('Espumantes'),
                icon: Icon(Icons.fastfood_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/espumante");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),ElevatedButton.icon(
                label: const Text('Sucos'),
                icon: Icon(Icons.local_drink),
                onPressed: () {
                  Navigator.pushNamed(context, "/suco");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              ),
            ],
          ),
          Row(children: [
            Container(
              width: 180,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "\n \n \n \n \n"
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
                label: const Text('Bebidas do seu Zé\n'
                    '   09/11/2022'),
                icon: Icon(Icons.baby_changing_station_sharp),
                onPressed: () {
                  Navigator.pushNamed(context, "/refrigerante");
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    textStyle: TextStyle(
                      fontSize: 15,)),
              /*Container(
                  margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                  padding: EdgeInsets.only(left: 22),
                  width: 1000,
                  height: 55,
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
                      Text("Bebidas do seu Zé\n"
                        "   09/11/2022"  ,

                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Montserrat',
                          ),
                          //textAlign: TextAlign.center,
                      )
                  )*/
              ),
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
                  height:55,
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
                      Text("Butequin do Carlos\n"
                        "   29/10/2022",

                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                        ),
                        //textAlign: TextAlign.center,
                      )
                  )
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
                  height: 55,
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
                      Text("Disk Bebidas\n"
                        "   25/10/2022",

                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Montserrat',
                        ),
                        //textAlign: TextAlign.center,
                      )
                  )
              ),
            ],
          ),
        ],
      ),

          /*
          Column(
            /* Item 1 */
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
          Column(
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
          Column(
            /* Item 3 */
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
                  print("Logout");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }



}
