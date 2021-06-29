import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: Text('asdadss'),
    );
  }

  // Widget _crearLista() {
  //   return ListView.builder(
  //     itemCount: _listaNumeros.length,
  //     itemBuilder: (BuildContext conext, int index) {
  //       return FadeInImage(
  //           image: NetworkImage('https://picsum.photos/seed/picsum/200/300'));
  //     },
  //   );
  // }
}
