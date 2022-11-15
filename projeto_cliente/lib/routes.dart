import 'package:flutter/material.dart';
import 'package:navegacao_drawer/pages/login_page.dart';

import 'pages/cartoes_page.dart';
import 'pages/cupons_page.dart';
import 'pages/home_page.dart';
import 'pages/refrigerante.dart';
import 'pages/cerveja.dart';
import 'pages/vinho.dart';
import 'pages/espumantes.dart';
import 'pages/suco.dart';
import 'pages/energetico.dart';

import 'pages/pedidos_page.dart';
import 'pages/refrigerante.dart';
import 'pages/cerveja.dart';
import 'pages/vinho.dart';
import 'pages/espumantes.dart';
import 'pages/suco.dart';
import 'pages/energetico.dart';

Map<String, WidgetBuilder> routes() {
  return {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/cupons': (context) => CuponsPage(),
    '/cartoes': (context) => CartoesPage(),
<<<<<<< HEAD
    '/pedidos': (context) =>PedidosPage(),
=======

    '/pedidos': (context) => PedidosPage(),
>>>>>>> 7a19ff6f062e15ed92e7029373b0f1d731cc6c1f
    '/refrigerante' : (context) => RefrigerantePage(),
    '/cerveja' : (context) => CervejaPage(),
    '/vinho' : (context) => VinhoPage(),
    '/suco' : (context) => SucosPage(),
    '/energetico' : (context) => EnergeticoPage(),
    '/espumante' : (context) => EspumantesPage(),
<<<<<<< HEAD


=======
>>>>>>> 7a19ff6f062e15ed92e7029373b0f1d731cc6c1f
  };
}
