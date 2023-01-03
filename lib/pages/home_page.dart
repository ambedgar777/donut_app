import 'package:donut_app/tabs/burger_tab.dart';
import 'package:donut_app/tabs/donut_tab.dart';
import 'package:donut_app/tabs/pizza_tab.dart';
import 'package:donut_app/tabs/smoothie_tab.dart';
import 'package:donut_app/utils/my_tabs.dart';
import 'package:flutter/material.dart';

import '../tabs/pancake_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //My Tabs
  List<Widget> myTabs =  [
    //Donut Tab
    MyTab(
      iconPath: 'assets/icons/donut.png',
    ),

    //Burger Tab
    MyTab(
      iconPath: 'assets/icons/cheese-burger.png',
    ),

    //Smoothie Tab
    MyTab(
      iconPath: 'assets/icons/smoothie.png',
    ),

    //Pancake Tab
    MyTab(
      iconPath: 'assets/icons/pancakes.png',
    ),

    //Pizza Tab
    MyTab(
      iconPath: 'assets/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey.shade800,
                size: 32,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey.shade800,
                  size: 32,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //I want to eat
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: const [
                  Text(
                    'I want to ',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  Text(
                    'Eat',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            //Tab Bar
            TabBar(tabs: myTabs),

            //Tab Bar View
            Expanded(
              child: TabBarView(
                children: [
                  //Donut Page
                  DonutTab(),

                  //Burger Page
                  BurgerTab(),

                  //Smoothie Page
                  SmoothieTab(),

                  //Pancake Page
                  PancakeTab(),

                  //Pizza Page
                  PizzaTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
