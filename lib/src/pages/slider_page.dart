import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            _checkBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      // divisions: 20,
      onChanged: (_bloquearCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://demasiadogeek.net/wp-content/uploads/2018/06/fondo-de-pantalla-HD.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //     );

    return CheckboxListTile(
        value: _bloquearCheck,
        onChanged: (valor) {
          // _bloquearCheck = valor;
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        value: _bloquearCheck,
        onChanged: (valor) {
          // _bloquearCheck = valor;
        });
  }
}
