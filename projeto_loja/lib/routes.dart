

import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/login_page.dart';

import 'pages/cadastrarloja_page.dart';
import 'pages/pedidos_page.dart';
import 'pages/home_page.dart';
import 'pages/cad_produto.dart';
import 'pages/cliente1.dart';
import 'pages/cliente2.dart';
import 'pages/cliente3.dart';



Map<String, WidgetBuilder> routes(){
  return{
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/cadastrarloja': (context) => CadastrarLojaPage(),
    '/pedidos': (context) => PedidosPage(),
    '/cadProduto': (context) => CadProdutoPage(),
    '/cliente1': (context) => Cliente1Page(),
    '/cliente2': (context) => Cliente2Page(),
    '/cliente3': (context) => Cliente3Page(),
  };
}