import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutterblocmovies/styles/theme.dart' as Style;
import 'package:flutterblocmovies/widgets/genres.dart';
import 'package:flutterblocmovies/widgets/now_playing.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.lightBlue,
        centerTitle: true,
        leading: Icon(
          EvaIcons.menu2Outline,
          color: Style.Colors.greyBox,
        ),
        title: Text("Tìm kiếm"),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              EvaIcons.searchOutline,
              color: Style.Colors.greyBox,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
        ],
      ),
    );
  }
}
