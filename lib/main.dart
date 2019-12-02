import 'package:flutter/material.dart';

void main() => runApp(Controles());


class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State{
  double precio = 0, iva = 0, precioTotal = 0, horas = 0;
  bool tienesMembresia = false, wash = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estacionamiento'),
          backgroundColor: Colors.black45,
        ),
        body:
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget> [
                TextField(
                onChanged: (event) {
                  print('=>' + event);
                  setState(() {
                    precio = double.parse(event);
                    iva = precio * 0.16;
                    precioTotal = precio * 1.16;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.face),
                  labelText: 'Nombre',
                  hintText: 'Escribe tu nombre',
                  helperText: 'No escribas en mayusculas',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              TextField(
                onChanged: (event) {
                  print('=>' + event);
                  setState(() {
                    precio = double.parse(event);
                    iva = precio * 0.16;
                    precioTotal = precio * 1.16;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.attach_money),
                  labelText: 'Costo de 1 hora',
                  hintText: 'Costo 1 hora',
                  helperText: 'No escribas letras',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              TextField(
                onChanged: (event) {
                  print('=>' + event);
                  setState(() {
                    precio = double.parse(event);
                    iva = precio * 0.16;
                    precioTotal = precio * 1.16;
                  });
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.money_off),
                  labelText: 'Costo de fraccion',
                  hintText: 'Costo fraccion',
                  helperText: 'No escribas letras',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Row(
                children: <Widget>[
                  Text('Datos de llegada')
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Horas'
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Minutos'
                ),
              ),
              Row(
                children: <Widget>[
                  Text('Datos de finalizacion')
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Horas'
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Minutos'
                ),
              ),
              // Row(
              //   children: <Widget>[
              //     Text('Horas')
              //   ],
              // ),
              // Slider(
              //   value: horas,
              //   min: 0,
              //   max: 10,
              //   divisions: 10,
              //   label: 'Horas totales $horas',
              //   onChanged: (event) {
              //     setState(() {
              //       horas = event;
              //     });
              //   },
              // ),
              Text('Precio: 78'),
              Text('Precio fraccion: 15'),
              Text('Precio total: 88'),
            ]
          )
        )
      )
    );
  }
}