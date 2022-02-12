import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/bgbg.jpg",
            fit: BoxFit.cover,
          ),
        ),
       
        Padding(
          padding: const EdgeInsets.only(top: 90.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: Image.asset(
              "images/guy.png",
              fit: BoxFit.cover,
            )),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 450.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            
            decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
          ),
        )
      ]),
    );
  }
}
