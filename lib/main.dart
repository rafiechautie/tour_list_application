import 'package:flutter/material.dart';
import 'detail_screen.dart';


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



