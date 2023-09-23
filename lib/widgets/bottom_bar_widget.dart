import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zaptek_ui/screen/hompage_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedIndex = 0;

  final List screens = [
    const HomePage(),
  ];

  void selectedScreen(int index) {
    if (index == 0) {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 90,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: BottomNavigationBar(
              unselectedItemColor: const Color.fromARGB(66, 30, 30, 30),
              selectedItemColor: Colors.grey.shade800,
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: selectedIndex,
              onTap: selectedScreen,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/home.svg',
                    height: 27,
                    width: 27,
                    color: Colors.black,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/bookmark.svg',
                    height: 27,
                    width: 27,
                  ),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/bell.svg',
                    height: 27,
                    width: 27,
                  ),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/images/user.svg',
                    height: 27,
                    width: 27,
                  ),
                  label: 'User',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
