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
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text('Menú'),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 94, 84)
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.mail),
                  title: Text('Bandeja de entrada'),
                  onTap: () {
                    print('Abriendo correos');
                  },
                ),
                Divider(),
                  ListTile(
                    leading: Icon(Icons.cancel),
                    title: Text('Correo no deseados'),
                    onTap: () {
                      print('Abriendo correos');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.cast_connected),
                    title: Text('Correo no deseados'),
                    onTap: () {
                      print('Abriendo Correo no deseados');
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Correo eliminados'),
                    onTap: () {
                      print('Abriendo Correo eliminados');
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.close),
                    title: Text('Cerrar sesión'),
                    onTap: () {
                      print('Abriendo errar sesión');
                    },
                  )
              ],
            ),
          ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.message),
           backgroundColor: Color.fromARGB(255,7,94,84),
         ),
       )
      ) 
    ); 
  } 
 
}