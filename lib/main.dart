import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var cardWidth = screenWidth - 20;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                width: cardWidth,
                child: Card(
                  color: Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.grey,
                          height: 20,
                          width: 150,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          color: Colors.green,
                          height: 22,
                          width: cardWidth * .90,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 80,
                    width: cardWidth * .90,
                    child: Card(
                      color: Colors.redAccent,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                color: Colors.green,
                                height: 20,
                                width: cardWidth * .80,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenWidth < 600 ? 110 : screenWidth < 800 ? 200 : screenWidth < 1000 ? 300 : 400,
                    bottom: 60,
                    child: Container(
                      color: Colors.grey,
                      height: 25,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

