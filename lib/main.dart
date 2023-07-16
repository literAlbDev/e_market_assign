import 'package:flutter/material.dart';

import 'package:e_market_assign/pages/signin.dart';
import 'package:e_market_assign/pages/signup.dart';
import 'package:e_market_assign/pages/brands.dart';
import 'package:e_market_assign/pages/categories.dart';
import 'package:e_market_assign/pages/product_details.dart';
import 'package:e_market_assign/pages/bag.dart';

import 'package:e_market_assign/pages/navigation/whishlist.dart';
import 'package:e_market_assign/pages/navigation/compare.dart';
import 'package:e_market_assign/pages/navigation/home.dart';
import 'package:e_market_assign/pages/navigation/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.orange, primary: Colors.orange[700]),
        scaffoldBackgroundColor: Colors.grey[200],
        useMaterial3: true,
      ),
      routes: {
        "/signin": (context) => SigninPage(),
        "/signup": (context) => SignupPage(),
        "/brands": (context) => BrandsPage(),
        "/categories": (context) => CategoriesPage(),
        "/productDetails": (context) => ProductDetailsPage(),
        "/bag": (context) => BagPage(),
      },
      home: const MyHomePage(),
      //home: SigninPage(),
      //home: SignupPage(),
      //home: BrandsPage(),
      //home: CategoriesPage(),
      //home: ProductDetailsPage(),
      //home: BagPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List _pages = [
    HomePage(),
    ComparePage(),
    WhishlistPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide.none,
        ),
        child: Badge(
          label: Text("2", style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.white,
          textColor: Colors.black,
          offset: Offset(0,20),
          child: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 15,
        shape: CircularNotchedRectangle(),
        color: Colors.white,
        elevation: 0,
        height: 50,
        padding: EdgeInsets.zero,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        icon: Icon(
                          Icons.home_filled,
                          color: _currentIndex == 0 ? Colors.orange : Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        icon: Icon(
                          Icons.swap_horiz,
                          color: _currentIndex == 1 ? Colors.orange : Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 2;
                          });
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: _currentIndex == 2 ? Colors.orange : Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _currentIndex = 3;
                          });
                        },
                        icon: Icon(
                          Icons.person,
                          color: _currentIndex == 3 ? Colors.orange : Colors.grey,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
