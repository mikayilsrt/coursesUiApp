import 'package:flutter/material.dart';

class SingleCourseItem extends StatefulWidget {

  String title;
  String times;
  bool watched;

  SingleCourseItem({this.title, this.times, this.watched});

  @override
  State<StatefulWidget> createState() => new _SingleCourseItem();
}

class _SingleCourseItem extends State<SingleCourseItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 22.0),
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Color(0xFFF3F3F3),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              gradient: LinearGradient(colors: [Color(0xFF253DEA), Color(0xFF5568F1)])
            ),
            child: Icon(widget.watched ? Icons.replay : Icons.play_arrow, color: Colors.white,)
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: TextStyle(color: Theme.of(context).accentColor, fontSize: 17.0, fontWeight: FontWeight.bold)),
                  SizedBox(height: 5.0,),
                  Text("${widget.times} mn", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 10.0),),
                ]
              ),
            ),
          )
        ]
      )
    );
  }
}