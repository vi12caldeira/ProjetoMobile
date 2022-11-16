import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/login_page.dart';
import 'package:navegacao_drawer/pages/pedidos_page.dart';

import 'pages/cartoes_page.dart';
import 'pages/cerveja.dart';
import 'pages/cupons_page.dart';
import 'pages/energetico.dart';
import 'pages/espumantes.dart';
import 'pages/home_page.dart';
import 'pages/refrigerante.dart';
import 'pages/suco.dart';
import 'pages/vinho.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/cupons': (context) => CuponsPage(),
    '/cartoes': (context) => CartoesPage(),
    '/pedidos': (context) => PedidosPage(),
    '/refrigerante': (context) => RefrigerantePage(),
    '/cerveja': (context) => CervejaPage(),
    '/vinho': (context) => VinhoPage(),
    '/suco': (context) => SucosPage(),
    '/energetico': (context) => EnergeticoPage(),
    '/espumante': (context) => EspumantesPage(),
  };
}
