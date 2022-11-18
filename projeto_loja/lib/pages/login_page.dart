import 'package:flutter/material.dart';
import 'package:navegacao_drawer/models/user.dart';
import 'package:navegacao_drawer/repository/userDAO.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  UserDAO db = UserDAO();

  final TextEditingController _controladorUser = TextEditingController();
  final TextEditingController _controladorSenha = TextEditingController();

   @override
  void initState() {
    super.initState();
    User igor = User(1, 'iguin', '123456');
    User vinicius = User(2, 'vinicin', '987654');
    User vitoria = User(3, 'vitoria', '00000');
   
    db.insertUser(igor);
    db.insertUser(vinicius);
    db.insertUser(vitoria);
  }

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
                onTap: () async {
                  final String user = _controladorUser.text;
                  final String senha = _controladorSenha.text;
                  User currentUser = new User(0, user, senha);

                 User? usuario = await db.getUser(user);
                if(usuario != null && usuario.autenticar(currentUser)){
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
