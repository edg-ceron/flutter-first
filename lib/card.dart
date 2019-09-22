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
              backgroundColor: Colors.black,
            ),
          body:
            Center(
              child: 
              Card(
                child: 
                  Image.asset('assets/images/test.jpg', width: 60),
                  elevation: 20.0,
                  color: Colors.white10,
              ),
            )
        )
    );
  }
}