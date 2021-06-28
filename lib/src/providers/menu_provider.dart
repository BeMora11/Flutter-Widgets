import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProdvider {
  List<dynamic> opciones = [];

  _MenuProdvider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(resp);
    // print(dataMap['rutas']);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProdvider();
