import 'package:flutter/material.dart';

class photo_gallery extends StatefulWidget {
  @override
  _photo_galleryState createState() => _photo_galleryState();
}

class _photo_galleryState extends State<photo_gallery> {
  List<String> quote = [
    'The Earth is What We all have in common.',
    'You Are Not a drop in the Ocean You Are an Entire Ocean in a drop.',
    'No Bird Soars too high if he Soars with his own wings.',
    'From The Heights OF These Pyramids Forty Centuries Look Down On Us.',
    'The last Thing I Want To Do Is Hurt You.',
    'I am Only Talking To My Duck Today.',
    'The camel is the ship of the desert'
  ];
  List<String> image = [
    'asset/images/1.jpg',
    'asset/images/2.png',
    'asset/images/3.jpg',
    'asset/images/4.jpg',
    'asset/images/5.jpg',
    'asset/images/6.jpg',
    'asset/images/7.png'
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: FlatButton(
          onPressed: () {
            setState(() {
              index == 0 ? index = 6 : index--;
            });
          },
          child: Text(
            "Pre",
            style: TextStyle(color: Colors.white),
          ),
        ),
        centerTitle: true,
        title: Text("Gallery"),
        actions: [
          FlatButton(
            onPressed: () {
              setState(() {
                index == 6 ? index = 0 : index++;
              });
            },
            child: Text(
              "Next",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${quote[index]}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset('${image[index]}')
          ],
        ),
      ),
    );
  }
}
