import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:fluttertoast/fluttertoast.dart";

void main() {
  runApp(const MaterialApp(
    home: assignmet(),
  ));
}
class assignmet extends StatelessWidget {
  const assignmet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Home_1();
  }
}


class Home_1 extends StatefulWidget {
  const Home_1({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return Home_1state();
  }
}
// ignore: camel_case_types
class Home_1state extends State<Home_1> {

  void shw(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    if (kDebugMode) {
      print("hi...");
    }
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return   Scaffold(
      appBar: AppBar(
        title: const Text("app bar"),
      ),
      body: Stack(children: <Widget>[
        Container(
          width: width ,
          height: height,
          color: Colors.blueGrey,
          child: const Text("Lobby",textAlign: TextAlign.center,
          style: TextStyle(fontSize: 60,color: Colors.white),),
        ),

        Align(
          alignment: AlignmentDirectional.center,
          child: Container(
            width: width * 0.90,
            height: height * 0.50,
            color: Colors.grey.shade400,
              child: Row(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                       padding: EdgeInsets.only(left: 40, top: 50,),
                      child: Column(
                        children: [
                          ElevatedButton(onPressed: shw, child:const Text("join1"),),
                          ElevatedButton(onPressed: shw, child:const Text("join2"),),
                          ElevatedButton(onPressed: shw, child:const Text("join3"),),
                          ElevatedButton(onPressed: shw, child:const Text("join4"),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),


          ),
        ),
        Align(
          alignment: AlignmentDirectional.center,

            child: Row(
              children: [
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: EdgeInsets.only(left: 260, top: 200,),
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: shw, child:const Text("join5"),),
                        ElevatedButton(onPressed: shw, child:const Text("join6"),),
                        ElevatedButton(onPressed: shw, child:const Text("join7"),),
                        ElevatedButton(onPressed: shw, child:const Text("join8"),),
                      ],
                    ),
                  ),
                ),
              ],


          ),
        ),
      ]),

    );
  }
}