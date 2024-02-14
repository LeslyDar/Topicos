import 'package:flutter/material.dart';
class CustomButtonHome extends StatelessWidget {
  final String name;
  final Color color;
  final Color txcolor;
  final Function() onPressed;

  const CustomButtonHome({
    Key? key,
    required this.name,
    required this.color,
    required this.txcolor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0, 
      height: 60.0, 
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          side: BorderSide(color: const Color.fromARGB(176, 0, 0, 0)),
          primary: color,
          onPrimary: txcolor,
        ),
        onPressed: onPressed,
        child: Text(
          name,
          style: TextStyle(
            color: txcolor,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}