import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavour;
  final burgerColor;
  final String burgerPrice;
  final String imagePath;

  final double borderRadius = 12.0;

  const BurgerTile(
      {super.key,
      required this.burgerFlavour,
      required this.burgerColor,
      required this.burgerPrice,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            //donut price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(borderRadius),
                      topRight: Radius.circular(borderRadius),
                    ),
                  ),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      color: burgerColor[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            //donut picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
              child: Image.asset(imagePath),
            ),
            //donut flavour
            Text(
              burgerFlavour,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'MacDonald\'s',
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),

            //love Button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //heart icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink.shade400,
                  ),
                  //plus icon
                  Icon(
                    Icons.add,
                    color: Colors.grey.shade800,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
