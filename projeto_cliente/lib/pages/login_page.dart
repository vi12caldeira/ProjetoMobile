import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        labelText: 'Usuário',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  TextFormField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    style: new TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  ButtonTheme(
                    height: 60.0,
                    child: ElevatedButton(
                      onPressed: () => {Navigator.pushNamed(context, "/home")},
                      child: Text(
                        "Entrar",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                    ),
                  )
                ],
              ),
            )));
  }
}
