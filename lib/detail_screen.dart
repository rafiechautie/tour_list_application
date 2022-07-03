import 'package:flutter/material.dart';

var informationTextStyle = TextStyle(fontFamily: 'Open Sans');

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child:  Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset('images/borobudur.jpg'), //menampilkan gambar dari local directory
                  Container(
                      margin: EdgeInsets.only(top: 16.0), //memberikan margin atas sebesar 16
                      child: Text(
                        "Candi Borobudur",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Open Sans',
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
                            Text(
                              "Open Everyday",
                              style: informationTextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.access_time),
                            SizedBox(height: 8.0),
                            Text(
                              "09:00-20:00",
                              style: informationTextStyle,
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.monetization_on),
                            SizedBox(height: 8.0),
                            Text(
                              "Rp25.000",
                              style: informationTextStyle,
                            )
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
                      style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Open Sans',
                      ),

                    ),
                  ),
                  Container(
                    height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1557544450-e1200c2c2bb7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGJvcm9idWR1cnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
                                ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                  'https://images.unsplash.com/photo-1505993597083-3bd19fb75e57?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJvcm9idWR1cnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1589310287002-b26eddda5e6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Ym9yb2J1ZHVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
                                ),
                              )
                          ),
                        ],
                      )
                  )
                ],
              )
          ),
        )
    );
  }
}