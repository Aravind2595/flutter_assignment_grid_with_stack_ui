import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CountryGrid(),
  ));
}

class CountryGrid extends StatelessWidget {
  CountryGrid({super.key});

  var countryList = [
    {'name': 'USA', 'image': 'assets/images/san-francisco-bridge.jpg'},
    {'name': 'England', 'image': 'assets/images/london.jpg'},
    {'name': 'France', 'image': 'assets/images/france.jpg'},
    {'name': 'Russia', 'image': 'assets/images/russia.jpg'},
    {'name': 'Canada', 'image': 'assets/images/canada.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView()"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 5,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 340,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(countryList[index]['image']!),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    countryList[index]['name']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ]);
            }),
      ),
    );
  }
}
