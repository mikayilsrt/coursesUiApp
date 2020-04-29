import 'package:flutter/material.dart';

class CoursesItemCard extends StatefulWidget {

  String title;
  String content;
  int nbLessons;
  List<Color> colors;

  CoursesItemCard({this.title, this.content, this.nbLessons, this.colors});

  @override
  State<StatefulWidget> createState() => new _CoursesItemCard();
}

class _CoursesItemCard extends State<CoursesItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 17.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        gradient: LinearGradient(colors: widget.colors != null ? widget.colors : [Color(0xFF253DEA), Color(0xFF5568F1)])
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${widget.nbLessons} lessons", style: TextStyle(color: Colors.white, fontSize: 12.0),),
              IconButton(icon: Icon(Icons.bookmark_border, color: Colors.white,), onPressed: null)
            ],
          ),
          Text(widget.title, style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
          SizedBox(height: 5.0,),
          Text(widget.content, style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.normal, height: 1.7),)
        ]
      ),
    );
  }
}