import 'package:flutter/material.dart';

class Cliente3Page extends StatelessWidget {
  const Cliente3Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Jairo Martins'),
          centerTitle: true,
        ),
        body: 
            Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 450),
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1)
          ),
          child:_informacoesCli3(), 
          ),
          
        
        );
  }

  Widget _informacoesCli3() {
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
                    "Rua Carre, bairro Book nº 21\n",
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
                  "28/10/2022     10km",
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
                  "\n1h      RS 20,00",
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
                  "-Agua Mineral 1l \n-6x Sukita Laranja \n"
                  "-Monster Ultra 473ml",
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
              padding: EdgeInsets.only(left: 50),
              //width: 1000,
              //height: 62,
              child: Text(
                  "RS 98,00",
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
