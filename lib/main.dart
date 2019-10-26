import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:datetime_picker_formfield/time_picker_formfield.dart';

void main() => runApp(Controles());


class Controles extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State{
  double costo1 = 40, costo2 = 10, costoTotal = 0;
  int hora1 = 0, hora2 = 0;

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
                  keyboardType: TextInputType.number,
                  onChanged: (event) {
                    setState(() {
                      costo1 = double.parse(event);
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Costo 1ra hora',
                    helperText: 'Solo escribe numeros',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (event) {
                  setState(() {
                    costo2 = double.parse(event);
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Costo x fracción',
                  helperText: 'Solo escribe numeros',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Text('Hora de Entrada'),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (event) {
                  setState(() {
                    hora1 = event as int;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Hora',
                  helperText: 'En formato 24 h',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (event) {
                  setState(() {
                    hora1 = event as int;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Minutos',
                  helperText: 'En formato 24 h',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Text('Hora de salida'),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (event) {
                  setState(() {
                    hora2 = event as int;
                    // costoTotal 
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Hora',
                  helperText: 'Solo numeros',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (event) {
                  setState(() {
                    hora2 = event as int;
                    // costoTotal 
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Minutos',
                  helperText: 'Solo numeros',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
              ),
              Text('Pagar: $costoTotal')
            ]
          )
        )
      )
    );
  }
}