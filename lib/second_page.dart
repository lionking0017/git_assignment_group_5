import 'package:flutter/material.dart';
import 'package:git_ass/third_page.dart';

class SecondPage extends StatefulWidget {
  final title;

  const SecondPage({Key? key, required this.title}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(color: null),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            "images/yellow.jpg",
            fit: BoxFit.cover,
          ),
        ),
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "BeFit",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0),
          child: Container(
              decoration: const BoxDecoration(color: null),
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: Image.asset(
                "images/fitted.png",
                fit: BoxFit.cover,
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
                    padding: EdgeInsets.only(top: 30.0),
                    child: Text(
                      "Customize",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          letterSpacing: 4),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Center(
                      child: Text(
                        "Feel free to adjust your workout",
                        textHeightBehavior: TextHeightBehavior(
                            leadingDistribution: TextLeadingDistribution.even),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            letterSpacing: 1.3,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "& diet settings according to",
                        textHeightBehavior: TextHeightBehavior(
                            leadingDistribution: TextLeadingDistribution.even),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            letterSpacing: 1.3,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "your comfort.",
                        textHeightBehavior: TextHeightBehavior(
                            leadingDistribution: TextLeadingDistribution.even),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            letterSpacing: 1.3,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Image.asset(
                      "images/Breadcrumb2.png",
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("Skip",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey))),
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
                                    builder: (context) => const ThirdPage(
                                      title: 'null',
                                    ),
                                  ));
                            },
                            child: const Text('NEXT',
                                style: TextStyle(fontSize: 12)),
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
