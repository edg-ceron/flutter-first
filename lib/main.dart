<<<<<<< HEAD
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
=======
import 'package:flutter/material.dart'; 
 
 
main() => runApp(Controles()); 
 
class Controles extends StatefulWidget{ 
  @override 
  State<StatefulWidget> createState() { 
    return Estado(); 
  } 
 
} 
 
class Estado extends State{ 
 
  String gestos='Gestos'; 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      home: DefaultTabController(
        length: 3,
        child: Scaffold( 
        appBar: AppBar( 
          backgroundColor: Color.fromARGB(255, 7, 94, 84), 
          // leading: IconButton( 
          //   icon: Icon(Icons.arrow_back_ios), 
          //   onPressed: (){ 
          //     print('te regresaste'); 
          //   }, 
          // ), 
          title: Text('Whatsapp'), 
          actions: <Widget>[
            IconButton (
              icon: Icon(Icons.search),
              onPressed: () {
                print('Seleccionaste el menu');
              }
            ),
            IconButton (
              icon: Icon(Icons.send),
              onPressed: () {
                print('Seleccionaste el menu');
              }
            )
          ],
          bottom: TabBar(
            tabs: [
              // Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats'),),
              Tab(child: Text('Estados'),),
              Tab(child: Text('Llamadas'),)
            ]
          ),
        ), 
        body:  
          TabBarView(
            children: [
              
              Column(
                children: <Widget>[
                  Text('Hola'),
                  Text('Que tal'),
                  Text('Respondeme!!!'),
                  Text('Lo siento estoy ocupado :D'),

                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nuevo mensaje'
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Text(
                      'Enviar mensaje',
                      style: TextStyle(fontSize: 20)
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: const Text(
                      'Eliminar',
                      style: TextStyle(fontSize: 20)
                    ),
                  )
                ],
              ),
              Center(child: Text('Estados') ),
              Center(child: Text('Para llamar a contactos que tiene WhatsApp') ),
            ],
          ),
          drawer: Drawer(
            elevation: 16.0,
>>>>>>> fix-snap-chat
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