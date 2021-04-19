import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(), //Henviser til classen MyApp
  );
}

class MyApp extends StatelessWidget {
  //Stateless widget vil aldri endre seg, tittelvindu, iconer o.l
  //Stateful widget har mulighet til å endre seg.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Dette er bakgrunnen
      home: Scaffold(
        // Dette er bakgrunnsfargen
        backgroundColor: Colors.teal,
        // Setter en SafeArea, som gjør at tekster o.l ikke presses der de ikke vises
        body: SafeArea(
          // Lager en container, med samme funksjon som en div i html.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                    'images/meg2.png'), // Assets settes i pubspec.yaml
              ),
              Text(
                'Harald Gimse',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'APPS & AUTOMATION',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20.0,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  //Lager en tekstboks med iconer o.l som er premade.
                  leading: Icon(Icons.phone, color: Colors.teal.shade900),
                  title: Text(
                    '+47 93 25 41 06',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.attach_email_outlined),
                  title: Text(
                    'harald@gimse.digital',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'SourceSansPro',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
