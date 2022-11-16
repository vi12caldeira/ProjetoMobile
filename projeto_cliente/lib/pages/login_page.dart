import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  final TextEditingController _controladorUser = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

  String usario = 'admin';
  String senha = '1234';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Entre com sua conta',
                style: TextStyle(fontSize: 30),
              ),
              TextFormField(
                controller: _controladorUser,
                decoration: InputDecoration(
                    labelText: 'Usuário',
                    hintText: "Informe seu usuário",
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (RegExp(emailRegex).hasMatch(value!)) {
                  } else if (value == null || value.isEmpty) {
                    return "Campo obrigatorio";
                  } else {
                    return "email is not correctly formatted";
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _controladorSenha,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    hintText: "Informe sua senha",
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo obrigatorio";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  final String user = _controladorUser.text;
                  final String senha = _controladorSenha.text;

                  if (user == 'admin' && senha == '1234') {
                    Navigator.pushNamed(context, '/home');
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text("Entrar"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
