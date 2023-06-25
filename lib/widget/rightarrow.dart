import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Arrow extends StatelessWidget {
  final Widget arrowTo;
  final IconData iconDirection;

  const Arrow({Key? key, required this.arrowTo, required this.iconDirection})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.purple,
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              //const Color.fromRGBO(108, 73, 164, 1),
              blurRadius: 5,
              //  offset: Offset(10, 10),
            )
          ]),
      child: IconButton(
        color: Colors.white,
        onPressed: () {
          Get.to(arrowTo,
              transition: Transition.size,
              duration: const Duration(seconds: 2));
        },

        // Navigator.push(context, MaterialPageRoute(builder: (_) => arrowTo)),
        icon: Icon(iconDirection),
      ),
    );
  }
}
