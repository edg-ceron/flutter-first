import 'package:flutter/material.dart';

void main() => runApp(Controles());


class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State{
  double precio = 0, iva = 0, precioTotal = 0, satisfaccionCliente = 0;
  bool tienesMembresia = false, palomitas = false, cubetaPalomera = false;
  String pelicula = "";
  @override
  // TODO: implement widget
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Texfield'),
        ),
        body:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget> [
                TextField(
                onChanged: (event) {
                  print('=>' + event);
                  setState(() {
                    precio = double.parse(event);
                    iva = precio*0.16;
                    precioTotal = precio*1.16;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.accessibility),
                  labelText: 'Nombre',
                  hintText: 'Escribe tu nombre',
                  helperText: 'No escribas en mayuculas',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Text('Precio: $precio'),
              Text('IVA: $iva'),
              Text('Precio total: $precioTotal'),
              Checkbox(
                value: tienesMembresia,
                onChanged: (event) {
                  print(event);
                  setState(() {
                    tienesMembresia= event;
                  });
                },
              ),
              Text('Tienes membresia $tienesMembresia'),
              Switch(
                value: palomitas,
                onChanged: (event) {
                  setState(() {
                    palomitas = event;
                  });
                }
              ),
              Text('¿ Quires palomitas ? $palomitas'),
              SwitchListTile(
                value: cubetaPalomera,
                title: Text('¿ Quieres cubeta palomera ? '),
                subtitle: Text(' Cubeta edicion del bromas '),
                secondary: Icon(Icons.filter),
                onChanged: (event) {
                  setState(() {
                    cubetaPalomera = event;
                  });
                }
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'Toy Story 4',
                    groupValue: pelicula,
                    onChanged: (event) {
                      setState(() {
                        pelicula = event;
                      });
                    },
                  ),
                  Text('Toy Story 4')
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'El bromas',
                    groupValue: pelicula,
                    onChanged: (event) {
                      setState(() {
                        pelicula = event;
                      });
                    },
                  ),
                  Text('El bromas')
                ],
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'Proyecto Geminis',
                    groupValue: pelicula,
                    onChanged: (event) {
                      setState(() {
                        pelicula = event;
                      });
                    },
                  ),
                  Text('Proyecto Geminis')
                ],
              ),
              Slider(
                value: satisfaccionCliente,
                min: 0,
                max: 10,
                divisions: 10,
                label: 'Calificacion $satisfaccionCliente',
                onChanged: (event) {
                  setState(() {
                    satisfaccionCliente = event;
                  });
                },
              )
            ]
          )
        )
      )
    );
  }
}