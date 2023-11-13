import 'package:flutter/material.dart';
import 'package:instaclone/Home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instaclone/Post.dart';
import 'package:instaclone/Profile.dart';
import 'package:instaclone/Reels.dart';
import 'package:instaclone/Search.dart';
class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _currIdx=0;
  List listofclass=<Widget>[Home(),Search(), Post(), Reels(), Profile()];
  @override
  Widget build(BuildContext context) {
    void _onptapped(int idx){
      setState(() {
        _currIdx=idx;
      });
    }
    return Scaffold(
      body: listofclass.elementAt(_currIdx),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        currentIndex: _currIdx,
        unselectedItemColor: Colors.black54,
        onTap: _onptapped,
        items: [
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.home), label: 'home'),
          BottomNavigationBarItem(icon: FaIcon(FontAwesomeIcons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined, size: 30,), label: 'post'),
          BottomNavigationBarItem(icon: Icon(Icons.video_library, size: 26,), label: 'reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 30,), label: 'profile'),
        ],
      ),
    );
  }
}
