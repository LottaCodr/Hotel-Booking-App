import 'package:flutter/material.dart';
import 'package:wakanow/Screens/dates&rates.dart';
import 'package:wakanow/Screens/lagos.dart';
import 'package:wakanow/main.dart';
import 'package:wakanow/widget/Buttons/bigbutton.dart';
import 'package:wakanow/widget/rightarrow.dart';

class AbujaScreen extends StatefulWidget {
  const AbujaScreen({Key? key}) : super(key: key);

  @override
  State<AbujaScreen> createState() => _AbujaScreenState();
}

class _AbujaScreenState extends State<AbujaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(22, 160, 133, 1),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 450,
                    color: Colors.purple,
                    child: ClipRRect(
                      child: Image.asset('assets/abuja.jpg', fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    left: 200,
                    top: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'WA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        Text('KA',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  const Positioned(
                      left: 215,
                      top: 113,
                      child: Text('now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white,
                          )))
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Centre Of Unity',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
                        'sed diam nonummy nibh euismod tincidunt ut laoreet dolore',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                          child: BigButton(
                              myfunction: Rate_DateScreen(),
                              myText: 'Rate and Date'))
                    ],
                  ))
            ],
          ),
          const Positioned(
            bottom: 220,
            child: Text(
              'ABUJA',
              style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BlackOpsOne',
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        color: Colors.white,
                        blurRadius: 50,
                        offset: Offset(2, 2))
                  ]),
            ),
          ),
          const Positioned(
              bottom: 315,
              right: 50,
              child: Arrow(
                arrowTo: Lagos(),
                iconDirection: Icons.arrow_forward_ios,
              ))
        ],
      ),
    );
  }
}
