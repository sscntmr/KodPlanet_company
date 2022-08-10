import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    //varsayılan değerleri ayarlamak için materialapp widget ına gideriz

    debugShowCheckedModeBanner: false,
    theme:
        ThemeData(fontFamily: 'Satisfy'), //varsayılan font ayarını değiştirdik.
    home: Scaffold(
      backgroundColor: Colors.brown[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundColor: Colors.lime,
                backgroundImage: AssetImage('assets/images/kahve.jpg'),
              ),
              Text(
                "Flutter Kahvecisi",
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.brown[900],
                    fontFamily: 'Satisfy'),
              ),
              Text(
                "Bir Kahveden Daha Fazlası ...",
                style: TextStyle(fontSize: 16, color: Colors.brown[900]),
              ),
              Divider(
                //aradaki çizgiyi sağladı
                height: 30,
              ),
              Container(
                // her satır için ayrı row lar olacağı için bunu kopyaladık ikinciye
                //margin: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(30.0),
                color: Colors.brown[800],
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      //bununla yazı ve ikon arasına boşluk sağladık.
                      width: 10.0,
                    ),
                    Text('siparis@kahve.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(30.0),
                color: Colors.brown[800],
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                    /* SizedBox(
                      //bununla yazı ve ikon arasına boşluk sağladık.
                      width: 10.0,
                    ),*/
                    Text('  0555 265 8597',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
