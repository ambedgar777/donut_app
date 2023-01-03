import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //list of donuts on sale

  List burgersOnSale = [
    //[donut flavour, donut price, donut color, donut imagePath,]
    ['Turkey', '42', Colors.blue, 'assets/images/burger.png'],
    ['Cheese', '39', Colors.red, 'assets/images/cheese-burger.png'],
    ['Veggie', '72', Colors.purple, 'assets/images/hamburger.png'],
    ['Bean', '62', Colors.brown, 'assets/images/burger.png'],
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: burgersOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1/1.5,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: burgersOnSale[index][0],
            donutPrice: burgersOnSale[index][1],
            donutColor: burgersOnSale[index][2],
            imagePath: burgersOnSale[index][3],
          );
        });
  }
}
