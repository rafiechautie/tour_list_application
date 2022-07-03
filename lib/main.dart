import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Wisata Yogyakarta",
      theme: ThemeData(),
      home: DetailScreen(), //menetapkan detail screen sebagai halaman home
    );
  }
}

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 16.0), //memberikan margin atas sebesar 16
                  child: Text(
                      "Candi Borobudur",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                  )
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0), //memberi margin sebesar 16 pada kiri dan kanan
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),//memberi jarak antara icon dan text
                        Text("Open Everyday")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text("09:00-20:00")
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text("Rp25.000")
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0), //memberi padding sebesar 16 di semua sisi
                child: Text(
                  "sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16.0),

                ),
              )
            ],
          ),
      )
    );
  }
}

