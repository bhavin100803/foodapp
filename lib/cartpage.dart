import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/provider/increment_decrement.dart';
import 'package:foodapp/widget/appbarwidget.dart';
import 'package:foodapp/widget/cartbottomnavbar.dart';
import 'package:foodapp/widget/drawer.dart';
import 'package:provider/provider.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
  @override
  Widget build(BuildContext context) {
    final value = Provider.of<increment_decrement>(context);
    final value_2 = Provider.of<increment_decrement>(context);
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Text(
                      "Order List",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/item/pizza.png",
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Hot Pizza",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Test Our Hot Pizza",
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                                Text(
                                  "\$10",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      value.decre();
                                    },
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    value.item.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      value.incre();
                                    },
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 9),
                    child: Container(
                      width: 380,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/item/burger.png",
                              height: 80,
                              width: 150,
                            ),
                          ),
                          Container(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Hot Burger",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Test Our Hot Burger",
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                                Text(
                                  "\$10",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.red),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      value_2.decre_2();
                                    },
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    value_2.item_2.toString(),
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                     value_2.incre_2();
                                    },
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(0, 3),
                            )
                          ]),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Items:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "10",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Sub-Total:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "\$60",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          // Divider(color: Colors.black,),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Delievery:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "\$20",
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Total:",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$80",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: Drawerwidget(),
      bottomNavigationBar: cartbottomnavbar(),
    );
  }
}
