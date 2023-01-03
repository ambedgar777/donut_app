import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //list of donuts on sale

  List donutsOnSale = [
    //[donut flavour, donut price, donut color, donut imagePath,]
    ['Ice-cream', '42', Colors.blue, 'assets/images/ice-cream-donut.png'],
    ['Strawberry', '39', Colors.red, 'assets/images/strawberry-donut.png'],
    ['Grape Ape', '72', Colors.purple, 'assets/images/grape-ape-donut.png'],
    ['Choco', '62', Colors.brown, 'assets/images/chocolate-donut.png'],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1/1.5,
                crossAxisCount: 2),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavour: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imagePath: donutsOnSale[index][3],
          );
        });
  }
}
