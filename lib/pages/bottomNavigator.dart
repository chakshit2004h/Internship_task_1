import 'package:flutter/material.dart';
import 'homePage.dart';
import 'ping.dart';
import 'profile.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  // List of pages for each navigation item
  final List<Widget> _pages = [
    const Homepage(), // Home Page
    const PingPage(), // Menu Page
    const ProfilePage(), // Profile Page
  ];

  // List of navigation items
  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.list_alt, 'label': 'Test Detail'},
    {'icon': Icons.menu, 'label': 'Ping'},
    {'icon': Icons.book_online_outlined, 'label': 'Session'},
    {'icon': Icons.cell_tower, 'label': 'Cell'},
    {'icon': Icons.auto_graph, 'label': 'Charts'},
    // Add more items here if needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(_navItems.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _navItems[index]['icon'],
                        color: _currentIndex == index ? Colors.white : Colors.grey,
                        size: 40,
                      ),
                      Text(
                        _navItems[index]['label'],
                        style: TextStyle(
                          color: _currentIndex == index ? Colors.white : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
