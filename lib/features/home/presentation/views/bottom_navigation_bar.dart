import 'package:flutter/material.dart';
import 'package:nectar/constants.dart';
import 'package:nectar/core/utils/styles.dart';
import 'package:nectar/features/home/presentation/views/home_screen.dart';

class AppBottomNavigation extends StatefulWidget {
  const AppBottomNavigation({super.key});

  @override
  State<AppBottomNavigation> createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int selectedPage = 0;
  final PageController _pageController = PageController();
  
    @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _pageController.jumpToPage(value);
            selectedPage = value;
          });
        },
        currentIndex: selectedPage,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: Styles.Text14,
        selectedLabelStyle: Styles.Text14,
        selectedItemColor: kPrimaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Account',
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const HomeScreen(),
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
