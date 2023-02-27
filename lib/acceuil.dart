import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';


class acceuil extends StatelessWidget {
  final List<String> imageList = [
    "https://pbs.twimg.com/media/E1lmluCWQAQeXHQ.jpg",
    "https://i0.wp.com/lapresse.tn/wp-content/uploads/2021/08/20210814_153219.jpg?fit=649%2C387&ssl=1",
    "https://madrassatii.com/wp-content/uploads/2021/10/%D8%AC%D9%88%D8%A7%D8%B2-%D8%A7%D9%84%D8%AA%D9%84%D9%82%D9%8A%D8%AD-%D9%83%D9%88%D9%81%D9%8A%D8%AF-scaled.jpg",

  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Acceuil"),
      ),
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: imageList.map((e) =>
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Image.network(e,
                              width: 500,
                              height: 300,
                              fit: BoxFit.cover,)
                          ],
                        ),
                      )).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}