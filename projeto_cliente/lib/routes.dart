
import 'package:flutter/material.dart';
import 'package:navegacao_drawer/main.dart';
import 'package:navegacao_drawer/pages/login_page.dart';
import 'package:navegacao_drawer/pages/pedidos_page.dart';

import 'pages/cartoes_page.dart';
import 'pages/cupons_page.dart';
import 'pages/home_page.dart';
import 'pages/cad_Produto.dart';
import 'pages/bebidas_do_ze.dart';
import 'pages/butequin_do_carlos.dart';
import 'pages/disk_bebidas.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/cupons': (context) => CuponsPage(),
    '/cartoes': (context) => CartoesPage(),
    '/pedidos': (context) => PedidosPage(),
    '/cadProduto': (context) => CadProdutoPage(),
    '/pedidos1' : (context) => BebidasZePage(),
    '/pedidos2' : (context) => ButequinCarlosPage(),
    '/pedidos3' : (context) => DiskBebidasPage(),
    
  };
}
