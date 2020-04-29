import 'package:flutter/material.dart';

import 'components/BannerComponent/BannerComponent.dart';
import 'components/CoursesCard/CoursesCard.dart';
import 'components/CoursesItemCard/CoursesItemCard.dart';

void main() => runApp(CoursesApp());

class CoursesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xFF4E515B),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            homeAppBar(context),
            SizedBox(height: 26.0),
            BannerComponent(title: "Learn at your own pace", content: "Discover thousands of courses and study the subject you want at any time.",),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              decoration: BoxDecoration(
                color: Color(0xFFF3F3F3),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: false,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                  icon: Icon(Icons.search, color: Theme.of(context).accentColor,),
                  hintStyle: TextStyle(color: Theme.of(context).accentColor, fontSize: 12.0),
                  hintText: "Search to start a new courses...",
                ),
              ),
            ),
            SizedBox(height: 20.0,),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(  
                  color: Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Text("Popular courses", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 17.0, fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        height: 210.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                            CoursesCard(title: "UX designer", content: "Improve the experience of your users by designing products that are both pleasant.", image: "assets/images/cover-image-2.png", colors: [Color(0xFFE92575), Color(0xFFFF4893)]),
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                            CoursesCard(title: "Mobile development", content: "We will develop our first application starting from blank page.", image: "assets/images/cover-image-1.png", colors: [Color(0xFF253DEA), Color(0xFF5568F1)]),
                          ]
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0,),
                            Text("Courses taken", style: TextStyle(color: Theme.of(context).accentColor, fontSize: 17.0, fontWeight: FontWeight.w500)),
                            SizedBox(height: 10.0,),
                            CoursesItemCard(title: "Get started with Adobe Photoshop !", content: "Reveal your creative talents through this course by articulating around three learning themes, is progressive and adapted to your level.", nbLessons: 6,),
                            CoursesItemCard(title: "Web development", content: "Take your first steps in the world of web development: create websites and give life to your imagination through this online course.", nbLessons: 6, colors: [Color(0xFF9425E7), Color(0xFFBA5EFF)],),
                          ]
                        )
                      ),
                    ]
                  )
                ),
              )
            )
          ]
        ),
      ),
    );
  }

  Widget homeAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.menu, color: Theme.of(context).accentColor,), onPressed: () => {}),
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