import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/friend_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'chat_screen.dart';
import 'more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // 상태 변수
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          FriendScreen(),
          ChatScreen(),
          MoreScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 디폴트로 넣자. 공간도 사라진다.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.user), label: ""),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.comment), label: ""),
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.ellipsisH), label: ""),
        ],
      ),
    );
  }
}




