import 'package:dars5/second_page.dart';
import 'package:dars5/third_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Text("chop")),
            title: TextButton(
          onPressed: () {},
          child: Text(
            "Home Page",
            style: TextStyle(color: Colors.red),
          ),
          style: TextButton.styleFrom(
              surfaceTintColor: Colors.amber, foregroundColor: Colors.pink),
        )),
        body: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext ctx) {
                          return SecondPage("Istalgan String");
                        },
                      ),

                    );
                  },
                  child: Text("Second Page")),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((non) {
                  return ThirdPage("Third Page from Home Page");
                })));

              }, child: Text("Third Page")),

              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (cotton){
                  return ThirdPage("Third page with replacement");
                }));
              }, child: Text("Third page with replacement"))
            ],
          ),
        ));
  }
}
