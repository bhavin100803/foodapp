import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';
import 'package:foodapp/itempage.dart';
import 'package:foodapp/widget/order_complate.dart';
import 'package:foodapp/widget/popular_item.dart';

class cartbottomnavbar extends StatelessWidget {
  const cartbottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Total:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "\$80",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                      color: Colors.red),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ordercomplate()));
                  print("congratulation!");
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),)
                  ),
                ),
                child: Text("Order Now",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
            )
          ],
        ),
      ),
    );
  }
}
