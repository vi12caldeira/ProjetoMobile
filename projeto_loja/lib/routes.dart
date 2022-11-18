

import 'package:flutter/material.dart';

import 'pages/cadastrarloja_page.dart';
import 'pages/cadastrarpro_page.dart';
import 'pages/pedidos_page.dart';
import 'pages/home_page.dart';
import 'pages/refrigerante.dart';
import 'pages/cerveja.dart';
import 'pages/whisky.dart';
import 'pages/cachaca.dart';
import 'pages/cliente1.dart';
import 'pages/cliente2.dart';
import 'pages/cliente3.dart';



Map<String, WidgetBuilder> routes(){
  return{
    '/': (context) => HomePage(),
    '/cadastrarloja': (context) => CadastrarLojaPage(),
    '/cadastrarprodutos': (context) => CadastrarProPage(),
    '/pedidos': (context) => PedidosPage(),
    '/refrigerante': (context) => RefrigerantePage(),
    '/cerveja': (context) =>CervejaPage(),
    '/whisky': (context) => WhiskyPage(),
    '/cachaca': (context) => CachacaPage(),
    '/cliente1': (context) => Cliente1Page(),
    '/cliente2': (context) => Cliente2Page(),
    '/cliente3': (context) => Cliente3Page(),
  };
}