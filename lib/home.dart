import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: Text("$i"),
            centerTitle: true,
            actions: [
              InkWell(
                child: Text("+1    "),
                onTap: (){
                  setState(() {
                    i++;
                  });
                },
              ),
              InkWell(
                child: Text("-1    "),
                onTap: (){
                  setState(() {
                    i--;
                  });
                },
              ),
              InkWell(
                child: Text("x2      "),
                onTap: (){
                  setState(() {
                    i=i*2;
                  });
                },
              ),InkWell(
                child: Text("x3      "),
                onTap: (){
                  setState(() {
                    i=i*3;
                  });
                },
              ),InkWell(
                child: Text("x4      "),
                onTap: (){
                  setState(() {
                    i=i*4;
                  });
                },
              ),
            ],
            leading: InkWell(
              child: Icon(Icons.lock_reset),
              onTap: (){
                setState(() {
                  i=1;
                });
              },
            ),
          ),
          body: Center(
            child: InkWell(
              onTap: (){
                setState(() {
                  i=i*5;
                });
              },
              child:  Container(
                child: Center(child: Text("X5",
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
                ),
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
            ),
          ),
        )
    );
  }
}
