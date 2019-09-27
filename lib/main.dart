import 'package:flutter/material.dart';

void main() => runApp(Vista());


class Vista extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blue),
      home: 
        Scaffold(
          appBar:
            AppBar(
              title: Text('Telegram')
            ),
          body:
            ListView(
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/nasa.png', width: 100),
                    title: Text('Nasa'),
                    subtitle: Text('Necesito tu codigo'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:30')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/bill.jpeg', width: 100),
                    title: Text('Bill Gates'),
                    subtitle: Text('Como te encuentras'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:25')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/elonk.jpeg', width: 100),
                    title: Text('Elon Musk'),
                    subtitle: Text('Tienes tiempo ?'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:22')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/tim.jpeg', width: 100),
                    title: Text('Tim Cook'),
                    subtitle: Text('Te quiero como CEO'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:15')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/amazon-1.jpg', width: 100),
                    title: Text('Amazon'),
                    subtitle: Text('Necesitamos una nueva app, te animas ?'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:10')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/platzi.png', width: 100),
                    title: Text('Platzi'),
                    subtitle: Text('Quieres dar un curso ?'),
                    trailing: Column(
                      children: <Widget>[
                        Icon(Icons.done),
                        Text('21:02')
                      ],
                    ),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/platzi.png', width: 100),
                    title: Text('Platzi'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('assets/images/test.jpg', width: 100),
                    title: Text('Hola'),
                    subtitle: Text('Subtitulo de un list que a su vez contiene cards y tambien list tile' 'Posdata tiene que asfafasfasfasfss'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,

                  )  
                ),
              ],
            )
        )
    );
  }
}