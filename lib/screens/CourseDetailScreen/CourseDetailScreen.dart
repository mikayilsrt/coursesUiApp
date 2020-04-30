import 'package:coursesUiApp/components/SingleCourseItem/SingleCourseItem.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _CourseDetailScreen();
}

class _CourseDetailScreen extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF253DEA), Color(0xFF5568F1)])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Android Development", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),),
                    SizedBox(height: 7,),
                    Text("We will develop our first application starting from blank page.", style: TextStyle(color: Colors.white, fontSize: 11.0, fontWeight: FontWeight.normal),),
                  ],
                )
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))
                ),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20.0,),
                          Text("Table of contents", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 17.0, fontWeight: FontWeight.w500)),
                          Expanded(
                            flex: 1,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                SingleCourseItem(title: "#1 Install Android studio", times: "0:05", watched: true),
                                SingleCourseItem(title: "#2 Create your first project", times: "0:05", watched: false),
                                SingleCourseItem(title: "#3 Reference the graphic elements", times: "0:05", watched: false),
                                SingleCourseItem(title: "#4 Launch your first application", times: "0:05", watched: false),
                                SingleCourseItem(title: "#4 Launch your first application", times: "0:05", watched: false),
                              ]
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -85.0,
                      right: 30.0,
                      child: Image(image: AssetImage("assets/images/cover-image-1.png")),
                    ),
                  ]
                )
              ),
            )
          ],
        )
      ),
    );
  }

  Widget appBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: () => { Navigator.pop(context) }),
          circleAvatar("https://images.unsplash.com/photo-1455274111113-575d080ce8cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
        ]
      ),
    );
  }

  Widget circleAvatar(String uri) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          border: Border.all(color: Colors.white, width: 1.5),
          image: DecorationImage(image: NetworkImage(uri), fit: BoxFit.cover)
        ),
      ),
    );
  }
}