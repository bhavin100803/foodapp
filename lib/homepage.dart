import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/cartpage.dart';
import 'package:foodapp/widget/appbarwidget.dart';
import 'package:foodapp/widget/categorieswidget.dart';
import 'package:foodapp/widget/drawer.dart';
import 'package:foodapp/widget/newest_item.dart';
import 'package:foodapp/widget/popular_item.dart';

class homeapge extends StatelessWidget {
  const homeapge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //   App bar widget
          AppBarWidget(),

          //   Search

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(21),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(height: 50,width: 290,child: Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "What would you like to have?",
                        border: InputBorder.none,
                      ),
                    ),
                    ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
        //   Category

          Padding(padding: EdgeInsets.only(top: 20,left: 10),
          child: Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          categorieswidget(),

        //   popular items
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text("Popular",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),

        //   Popular item
          popularitemwidget(),
        //   Newest item
      Padding(padding: EdgeInsets.only(top: 20,left: 10),
        child: Text("Newest",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
        //   Newest item widget
          newestitemwidget(),
        ],
      ),
      drawer: Drawerwidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0,3),
            )
          ]
        ),
        child: FloatingActionButton(onPressed: (){
          Navigator.pushNamed(context, "cartPage");
        },child: Icon(CupertinoIcons.cart,size: 28,color: Colors.red,),
        backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
