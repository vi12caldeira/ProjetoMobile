
import 'package:flutter/material.dart';

class CadastrarLojaPage extends StatelessWidget {
  const CadastrarLojaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Lojas'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            child: Text(
              "LOJAS:",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Text(
              "Bar do Zé\n"
              "\n    CNPJ:  00.111.222/0001-55\n"
              "\n    Rua Jé, bairro Edição nº 87\n"
              "\n    Horário de funcionamento: 14:00 às 00:00",
              style: TextStyle(
                  fontSize: 22,
                  //fontStyle: FontStyle.italic,
                  //fontWeight: FontWeight.w900,
                  color: Colors.blueGrey),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              //color: Colors.black12,
              border: Border.all(),
            ),
            child: Text(
              "Butequin do Fábio\n"
              "\n    CNPJ:  00.111.222/0001-55\n"
              "\n    Rua 31, bairro Cruz nº 872\n"
              "\n    Horário de funcionamento: 08:00 às 22:00",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
