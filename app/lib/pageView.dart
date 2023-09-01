import 'package:app/cert/list.dart';
import 'package:app/favourite.dart';
import 'package:app/notification.dart';
import 'package:app/settings/settings.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class PageViewing extends StatefulWidget {
  PageViewing();
  @override
  _PageViewingState createState() => _PageViewingState();
}

class _PageViewingState extends State<PageViewing> {
  var _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    List _pageOptions = [
      const Homepage(),
      const Favouritepage(),
      const Notificationpage(),
      const CertList(),
      const Settingspage(),
    ];

    return WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedIconTheme: const IconThemeData(
              color: Color(0xff000f9f),
            ),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.workspace_premium),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz),
                label: '',
              ),
            ],
            currentIndex: _selectedPage,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
            },
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            child: _pageOptions[_selectedPage],
          ),
        ));
  }
}
