import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/login_page.dart';

import 'pages/cartoes_page.dart';
import 'pages/cupons_page.dart';
import 'pages/home_page.dart';
import 'pages/pedidos_page.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/cupons': (context) => CuponsPage(),
    '/cartoes': (context) => CartoesPage(),
    '/pedidos': (context) => PedidosPage(),
  };
}
