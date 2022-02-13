import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(color: null),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/red.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0),
          child: Container(
              decoration: const BoxDecoration(color: null),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Image.asset(
                "images/rippers.png",
                fit: BoxFit.cover,
                scale: 3.0,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 450.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Text(
                      "Let's go...",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "Get the new fitness updates everyday & improve performance.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Skip",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black))),
                        ),
                        Expanded(child: Container()),
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(500)),
                              primary: Colors.black, // background
                              onPrimary: Colors.white,
                              // foreground
                            ),
                            onPressed: () {},
                            child: const Text('Next',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}