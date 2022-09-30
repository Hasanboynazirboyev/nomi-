import 'package:dars5/third_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  String appBarName; 
   SecondPage(this.appBarName);
  @override
  Widget build(BuildContext non) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarName),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: 400,
        // color: Colors.redAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "SecondPage",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.pop(non);
                },
                child: Text("Orqaga ")), //yol yoq
            ElevatedButton(
                onPressed: () {
                  Navigator.push(non, MaterialPageRoute(builder: (kuchu) {
                    return ThirdPage("MyThird Page with push");
                  }));
                },
                child: Text("Third Page")),

              ElevatedButton(onPressed: (){
                Navigator.pushAndRemoveUntil(non, MaterialPageRoute(builder: (ctx){
                  return ThirdPage("Third Page with removeUntil");
                }), (route) => false);
              }, child: Text("with push andRemoveUntil"))
          
          ],
        ),
      ),
    );
  }
}
