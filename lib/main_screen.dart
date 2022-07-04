import 'package:flutter/material.dart';
import 'package:tour_list_application/detail_screen.dart';
import 'model/tourism_place.dart';

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Indonesia. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains){
          if(constrains.maxWidth <= 600){
            return const TourismPlaceList();
          }else if(constrains.maxWidth <= 1200){
            return const TourismPlaceGrid(gridCount: 4);
          }else{
            return const TourismPlaceGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class TourismPlaceList extends StatelessWidget{

  const TourismPlaceList({Key? key}) : super(key: key);

  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index){
            final TourismPlace place = tourismPlaceList[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(place.imageAsset),
                      flex: 1,
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                place.name,
                                style: TextStyle(
                                    fontSize: 16.0
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(place.location)
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: tourismPlaceList.length,
        ),
    );
  }
}

class TourismPlaceGrid extends StatelessWidget{
  final int gridCount;

  const TourismPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      thumbVisibility: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: tourismPlaceList.map((place) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: place);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        place.name,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        place.location,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}