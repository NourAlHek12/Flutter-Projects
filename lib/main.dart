import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/noor.jpeg'),
                radius: 50,
              ),
              Text(
                  'Nour Al Hek',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal.shade100
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                        Icons.phone,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 10,),
                    Text(
                        "+961 81 652 874",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'SourceSans3',
                        color: Colors.teal.shade900
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "nour11@gmail.com",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSans3',
                          color: Colors.teal.shade900
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

