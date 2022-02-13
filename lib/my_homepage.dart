import 'package:flutter/material.dart';
import 'package:git_ass/secondpage.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(color: null),
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
              decoration: const BoxDecoration(color: null),
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: Image.asset(
                "images/guy.png",
                fit: BoxFit.cover,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 350.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(                 
                    padding: EdgeInsets.only(top: 45.0),
                    child: Text(
                      "Welcome!",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 40),                    
                  ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "Explore the all new way to build your fitness and find the perfect fit for you.",
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SecondPage(
                                        title: null,
                                      ),
                                    ));
                              },
                              child: const Text('Next',
                                  style: TextStyle(fontSize: 20))),
                        ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(500)),
                              primary: Colors.black, // background
                              onPrimary: Colors.white,
                              // foreground
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SecondPage(),
                                ),
                              );
                            },
                            child: const Text('Next'),
                          ),
                        )
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
