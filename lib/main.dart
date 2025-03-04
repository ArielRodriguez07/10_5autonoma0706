import 'package:flutter/material.dart';

void main() {
  runApp(BorderApp());
}

class BorderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Border Demo',
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Color(0xff6ae9f9),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Image.network(
                  'https://raw.githubusercontent.com/ArielRodriguez07/p10-5autonoma0706/refs/heads/main/dise%C3%B1o3.PNG',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Ariel Rodriguez Ceniceros 22308051280706',
              style:
                  TextStyle(fontSize: 20.0), // Aumenta el tamaño de la fuente
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 100,
                height: 150,
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Color(0xff5fd9ef), width: 2),
                    bottom: BorderSide(color: Color(0xff4de8ed), width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 2),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 48),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
