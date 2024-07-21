import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/homepage.dart';

class ordercomplate extends StatelessWidget {
  const ordercomplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade400,
          child: Center(
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                    )
                  ]),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ッ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      "Congratulation!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.red,

                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>homeapge()));
                        print("congratulation!");
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 10, horizontal: 70),
                        ),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),)
                        ),
                      ),
                      child: Text("Go Back ッ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
