import 'package:flutter/material.dart';
//mudar para o endereço do cliente
class Cliente1Page extends StatelessWidget {
  const Cliente1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Francisco de Souza'),
          centerTitle: true,
        ),
        body: 
        Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 430),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1)
          ),
          child: _informacoesCli1(),
          )
        );
  }

  Widget _informacoesCli1() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
          /* Item 1 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
               margin: EdgeInsets.only(top: 10, right: 10),
                padding: EdgeInsets.only(left: 10),
                width: 1000,
                height: 20,
                child: (Text(
                    "Rua Carlos, bairro Ale nº 23\n",
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
              //margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 20),
              //width: 1000,
              //height: 62,
              child: Text(
                  "09/10/2022     2,5km",
                  style: TextStyle(
                    fontSize: 13,
                  )
                  ),
            ),
          ],
        ),
        Column(
          /* Item 3 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //margin: EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: EdgeInsets.only(left: 10),
              //width: 1000,
              //height: 62,
              child: Text(
                  "\n15m      RS 7,99",
                  style: TextStyle(
                    fontSize: 15,
                  )
                  ),
            ),
          ],
        ),
        Column(
          /* Item 4 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 5, right: 10),
              padding: EdgeInsets.only(left: 20),
              //width: 1000,
              //height: 62,
              child: Text(
                  "-Fanta Laranja 1,5l \n -Coca-Cola 2l \n"
                  "-Agua Mineral 500ml",
                  style: TextStyle(
                    fontSize: 15,
                  )
                  ),
            ),
          ],
        ),
        Column(
          /* Item 4 */
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 15),
              padding: EdgeInsets.only(left: 100),
              //width: 1000,
              //height: 62,
              child: Text(
                  "\nRS 30,00",
                  style: TextStyle(
                    fontSize: 15,
                  )
                  ),
            ),
          ],
        ),
    ],
    );
  }
}
