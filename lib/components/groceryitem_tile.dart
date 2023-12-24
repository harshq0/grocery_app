import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  final void Function()? onPressed;

  const GroceryItemTile({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.imagePath,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color
      decoration: BoxDecoration(
        color: color[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //images
          Image.asset(
            imagePath,
            height: 80,
          ),

          //Text
          Text(
            itemName,
            style: GoogleFonts.outfit(),
          ),

          //price + button
          MaterialButton(
            onPressed: onPressed,
            color: color[600],
            child: Text(
              "Rs." + itemPrice,
              style: GoogleFonts.outfit(),
            ),
          ),
        ],
      ),
    );
  }
}
