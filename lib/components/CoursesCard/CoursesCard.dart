import 'package:flutter/material.dart';

class CoursesCard extends StatefulWidget {

  String title;
  String content;
  String image;
  List<Color> colors;

  CoursesCard({this.title, this.content, this.image, this.colors});

  @override
  State<StatefulWidget> createState() => new _CoursesCard();
}

class _CoursesCard extends State<CoursesCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.0, right: 15.0, top: 30.0),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: 165.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 14.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.blue,
              gradient: LinearGradient(
                colors: widget.colors != null ? widget.colors : [Color(0xFF253DEA), Color(0xFF5568F1)]
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 7.0),
                Text(widget.content, style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.normal, height: 1.7),),
              ]
            )
          ),
          Positioned(
            top: -35.0,
            right: -30.0,
            child: Container(
              child: Image(image: AssetImage(widget.image))
            )
          )
        ],
      ),
    );
  }
}