import 'package:flutter/material.dart';

class BannerComponent extends StatefulWidget {

  String title;
  String content;

  BannerComponent({
    String title,
    String content
  }) {
    this.title = title;
    this.content = content;
  }

  @override
  State<StatefulWidget> createState() => new _BannerComponent();
}

class _BannerComponent extends State<BannerComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.title, style: TextStyle(color: Theme.of(context).accentColor, fontSize: 22.0, fontWeight: FontWeight.bold),),
          SizedBox(height: 7.0),
          Text(widget.content, style: TextStyle(color: Theme.of(context).accentColor, fontSize: 14.0, fontWeight: FontWeight.normal, height: 1.5), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}