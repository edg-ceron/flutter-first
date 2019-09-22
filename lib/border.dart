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
              backgroundColor: Colors.white70,
            ),
          body:
            Container(
              child: 
                Text('Contenido del cuerpo'),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.lightGreen[500],
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                    color: Colors.green,
                    offset: Offset(3,3),
                    blurRadius: 5.0
                  )],
                  border: Border.all(
                    width: 4,
                    color: Colors.lightGreen[100]
                  )
                ),
                margin: EdgeInsets.all(30),
            )
        )
    );
  }
}