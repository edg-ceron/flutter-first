import 'package:flutter/material.dart';

import './myWidget.dart';

// void main() => runApp(MyWidget());


void main() => runApp(MyWidget2());

class MyWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }
}

class Estado extends State<MyWidget2>{
  var darkTheme = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Cupertino IOs
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: darkTheme ? Colors.green :  Colors.black,
        brightness: darkTheme ? Brightness.dark : Brightness.light,
      ),
      home: 
        Scaffold(
          appBar:
            AppBar(
              title: Text('Temas'),
            ),
          body:
            Center(
              child: 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Esto es una app para cambiar de tema (Dark to Light)'),
                    Text('(Dark to Light)'),

                  ],
                ),
            ),
            //   child: Text('Saldo inicial 1 , meses actuales: $mes , inversiones $inversiones saldo final: $monto '),
            // ),
          floatingActionButton: 
            FloatingActionButton(
              child: Icon(darkTheme ? Icons.brightness_5 : Icons.brightness_2 ),
              onPressed: () {
                setState(() {
                  darkTheme = !darkTheme;
                });
              },
            ),
        ),
    );
  }
}

var encabezado = AppBar(
  title: Text('Layout')
);

var cuerpo = 
  Text('Cuerpo de la App en variable',
  style: TextStyle(
      // backgroundColor: Colors.fromARGB(127, 255, 0, 0),
      color: Colors.white,
      fontSize: 50.0,
      fontFamily: 'Arial',
      fontWeight: FontWeight.bold
  )
);
