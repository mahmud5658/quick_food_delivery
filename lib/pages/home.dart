import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quick_food_delivery/widgets/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool burger = false, pizza = false, iceCream = false, salad = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50, left: 20, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hello Abdullah,',
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Delicious Food',
              style: AppWidget.headlineTextFeildStyle(),
            ),
            Text(
              'Discover and Get Great Food',
              style: AppWidget.lightTextFeildStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    burger = true;
                    salad = false;
                    pizza = false;
                    iceCream = false;
                    setState(() {
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: burger? Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'images/burger.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        color: burger?Colors.white:Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                   onTap: () {
                    burger = false;
                    salad = false;
                    pizza = false;
                    iceCream = true;
                    setState(() {
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                       decoration: BoxDecoration(color: iceCream? Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'images/ice-cream.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover, color: iceCream?Colors.white:Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                   onTap: () {
                    burger = false;
                    salad = false;
                    pizza = true;
                    iceCream = false;
                    setState(() {
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                       decoration: BoxDecoration(color: pizza? Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'images/pizza.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover, color: pizza?Colors.white:Colors.black,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                   onTap: () {
                    burger = false;
                    salad = true;
                    pizza = false;
                    iceCream = false;
                    setState(() {
                    });
                  },
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                       decoration: BoxDecoration(color: salad? Colors.black:Colors.white,borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        'images/salad.png',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover, color: salad?Colors.white:Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
