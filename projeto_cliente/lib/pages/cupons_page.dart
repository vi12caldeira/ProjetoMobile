import 'package:flutter/material.dart';

class CuponsPage extends StatelessWidget {
  const CuponsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupons'),
        centerTitle: true,
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
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
                ), //Border
                borderRadius: BorderRadius.circular(5),
                //color:Colors.green
              ),
              child: Text(
                "Cupom de final de semana\n"
                "\nResgate seu cupom e ganhe \n20% de desconto"
                "\n \n \n \n \n \n \n"
                "Promoção válida somente para \nas lojas participantes:\n"
                "      Bar do Zé\n"
                "      Cantin da cachaça\n"
                "      Distribuidora Dora\n"
                "      Disk driks\n"
                "      Buteco Seu Carlos\n"
                "Obs.: Válido somente para \ncompras acima de R 30,00",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ]),
    );
  }
}
