import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BigButton extends StatelessWidget {
  final Widget myfunction;
  final String myText;

  const BigButton({Key? key, required this.myfunction, required this.myText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 219,
      height: 44,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(108, 73, 164, 1),
          boxShadow: const [
            BoxShadow(
              color: Colors.black54,
              //const Color.fromRGBO(108, 73, 164, 1),
              blurRadius: 5,
              //  offset: Offset(10, 10),
            )
          ],
          // purple color
          borderRadius: BorderRadius.circular(60)),
      child: MaterialButton(
          child: Text(
            myText,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(225, 225, 225, 1)),
          ),
          onPressed: () {
            Get.to(myfunction,
                transition: Transition.size,
                duration: const Duration(seconds: 2));
          },
      ),
    );
  }
}
