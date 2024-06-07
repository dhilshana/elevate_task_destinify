// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:destinify/pages/maps/maps.dart';
import 'package:destinify/postCards/cardModel.dart';
import 'package:destinify/pages/profile/profile.dart';
import 'package:destinify/pages/feeds/feeds.dart';
import 'package:destinify/searchProvider/search_provider.dart';
import 'package:destinify/story/story.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Destinify',
          style: TextStyle(
            fontFamily: 'Destinify Font',
            fontSize: 30,
          ),
        ),
        actions: [
          Consumer<searchProvider>(
            builder: (context, searchBar, child) {
              if (searchBar.isSearching) {
                return Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.teal, width: 2))),
                    ),
                  ),
                );
              } else {
                return IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    searchBar.toggleSearch();
                  },
                );
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            StorySection(),
            CardModel(),
          ],
        ),
      ),
      bottomNavigationBar:
          Consumer<searchProvider>(builder: (context, searchBar, child) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.teal,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color.fromARGB(255, 37, 36, 42),
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.map,
                color: Colors.white,
              ),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: searchBar.selectedIndex,
          onTap: (index) {
            switch (index) {
              case 0:
                break;
              case 1:
                searchBar.updateSelectedIndex(index);
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddFeed()));
                break;
              case 3:
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Maps()));
                break;
              case 4:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfile()));
            }
          },
        );
      }),
    );
  }
}
