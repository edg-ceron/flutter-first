import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp (
      home: 
        Scaffold (
          appBar: 
            AppBar(
              title: Text('Mi widget en otro archivo'),
              backgroundColor: Colors.redAccent,
            ),
          body:
            Center (
              child: Text('Presiones $i veces'),
            ),
          floatingActionButton: 
            FloatingActionButton(
              backgroundColor: Colors.redAccent,
              child: Icon(Icons.fingerprint),
              onPressed: () {
                print("No me presiones");
                i++;
                print('Mi valor actual es $i');
              },
            ),
      )
    );
  }
}
