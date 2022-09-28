import 'package:flutter/material.dart';

class CoffeeNames extends StatelessWidget {
  final String? coffeType;
  final bool isSelected;
  final VoidCallback onSelectedTap;
  CoffeeNames({
   required this.coffeType,
    required this.isSelected,
    required this.onSelectedTap,
});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSelectedTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Text(coffeType!,style:TextStyle(
          fontSize: 18.0,color:isSelected?Colors.deepOrange:Colors.grey[500],fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
