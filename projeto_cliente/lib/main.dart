import 'package:flutter/material.dart';
import 'package:navegacao_drawer/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/home_page.dart';

void main(){
  /*WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      routes: routes(),
    );
  }
}

