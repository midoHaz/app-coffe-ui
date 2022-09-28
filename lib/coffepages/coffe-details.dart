import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeDetails extends StatelessWidget {
  final String CoffeImagepath;
  final String CoffeInamgeName;
  final String CoffePrice;
  CoffeDetails({
    required this.CoffeImagepath,
    required this.CoffeInamgeName,
    required this.CoffePrice,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,bottom: 25.0),
      child: Container(
        padding:const EdgeInsets.all(15.0),
        width: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(child: Image.asset(CoffeImagepath),borderRadius: BorderRadius.circular(12.0),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    CoffeInamgeName,
                    style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  const SizedBox(height: 5.0,),
                  Text(
                    "with milk ",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text("\$"+CoffePrice),
               const Icon(Icons.add_circle,size: 35.0,color: Colors.deepOrange,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
