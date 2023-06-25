import 'package:flutter/material.dart';

import '../main.dart';
import '../widget/Buttons/bigbutton.dart';

class Rate_DateScreen extends StatefulWidget {
  const Rate_DateScreen({Key? key}) : super(key: key);

  @override
  State<Rate_DateScreen> createState() => _Rate_DateScreenState();
}

class _Rate_DateScreenState extends State<Rate_DateScreen> {
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
                    height: 250,
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
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Calendar will stay here'),

                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: BigButton(
                              myfunction: MyHomePage(),
                              myText: 'Book Now'))
                    ],
                  ))
            ],
          ),
          const Positioned(
            top: 210,
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
        ],
      ),
    );
  }
}
