import 'package:coffe_app_ui/coffepages/coffe-details.dart';
import 'package:coffe_app_ui/components.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'coffe-names.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var orderController = TextEditingController();
  var FormKey = GlobalKey<FormState>();
  final List coffeTypes = [
    ['Cappucino', true],
    ['coffe Milk', false],
    ['Moca', false],
    ['Milk', false],
    ['Ice Coffee', false],
  ];

  void coffeTypeSelected(int index) {
setState(() {
  for(int i=0;i<coffeTypes.length;i++){
    coffeTypes[i][1]=false;
  }
  coffeTypes[index][1]=true;
});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.person),
          ),
        ],
        elevation: 0,
      ),
      body: Form(
        key: FormKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Find the best coffe for you",
                style: GoogleFonts.bebasNeue(fontSize: 60.0),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: defaultFormField(
                  controller: orderController,
                  type: TextInputType.text,
                  prefix: Icons.coffee_maker_outlined,
                  label: "Find your coffee",
                  valid: (String value) {
                    if (value.isEmpty) {
                      return 'search can not be empty';
                    }
                    return null;
                  }),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 40.0,
              child: ListView.builder(itemBuilder: (context, index) {
                return CoffeeNames(coffeType: coffeTypes[index][0],
                    isSelected: coffeTypes[index][1],
                    onSelectedTap:(){
                  coffeTypeSelected(index);
                    });
              },itemCount: coffeTypes.length,scrollDirection: Axis.horizontal,shrinkWrap:true ,),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeDetails(
                    CoffeImagepath:"lib/images/cabetcheno.jpg" ,
                    CoffeInamgeName:"Cappucino" ,
                    CoffePrice:"4.25" ,
                  ),
                  CoffeDetails(
                    CoffeImagepath:"lib/images/coffeemilk.jpg" ,
                    CoffeInamgeName:"Coffee Milk" ,
                    CoffePrice:"4.9" ,
                  ),
                  CoffeDetails(
                    CoffeImagepath:"lib/images/moca.jpg" ,
                    CoffeInamgeName:"Moca" ,
                    CoffePrice:"5.0" ,
                  ),
                  CoffeDetails(
                    CoffeImagepath:"lib/images/milk.jpg" ,
                    CoffeInamgeName:"Milk" ,
                    CoffePrice:"4.0" ,
                  ),
                  CoffeDetails(
                    CoffeImagepath:"lib/images/icecoffe.jpg" ,
                    CoffeInamgeName:"Ice Coffee" ,
                    CoffePrice:"6.0" ,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
      ]),
    );
  }
}
