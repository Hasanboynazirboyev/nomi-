import 'package:dars5/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ThirdPage extends StatelessWidget {
  String appBarName;
  ThirdPage(this.appBarName,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarName),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        width: 400,
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Third Page",
            style: TextStyle(fontSize: 30, color: Colors.purple),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("orqaga")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (kamaz){
              return MyHomePage();
            }));
          }, child: Text("HomePage with push")),

          ElevatedButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (ctx){
              return MyHomePage();
            }), (route) => false);
          }, child: Text("HomePage with removeUntil")),
        ]),
      ),
    );
  }
}
