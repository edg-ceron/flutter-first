import 'package:flutter/material.dart';

void main() => runApp(Vista());


class Vista extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: 
        Scaffold(
          appBar:
            AppBar(
              title: Text('Vistas'),
              backgroundColor: Colors.white,
            ),
          body:
          SizedBox(
            width: double.infinity,
            child: 
              FlatButton(
                onPressed: () {
                  /*...*/
                },
                color: Colors.deepOrange[600],
                textColor: Colors.white,
                child: Text('Aceptar'),
              ),
          )
        )
    );
  }
}