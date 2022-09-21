import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_ui/page/account_page.dart';
import 'package:instagram_ui/page/home_page.dart';
import 'package:instagram_ui/page/reels_page.dart';
import 'package:instagram_ui/page/search_page.dart';
import 'package:instagram_ui/page/shopp_page.dart';

class nav_bar extends StatefulWidget {
  @override
  State<nav_bar> createState() => _nav_barState();
}

class _nav_barState extends State<nav_bar> {
  int _index = 0;

  void _onTap(int index) {
    setState(() {
      _index = index;
    });
  }

  List<Widget> pages =[
     home_page(),
     search_page(),
     reels_page(),
     shopp_page(),
     account_page()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
        //backgroundColor: Colors.black12,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: _index,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.amber,
          iconSize: 35,
          onTap: _onTap,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'asset/icons/Home.svg',
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('asset/icons/Search.svg',
                    color: Colors.black),
                label: 'search'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/icons/Reels.svg',
                  color: Colors.black),
              label: 'reels',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('asset/icons/Shop.svg',
                    color: Colors.black),
                label: 'shop'),
            const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('asset/logo/profil.jpeg'),
                ),
              ),
              label: 'Account',
            ),
          ],
        ));
  }
}
