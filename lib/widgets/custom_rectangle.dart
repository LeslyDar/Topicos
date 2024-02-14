import 'package:flutter/material.dart';
class CustomButtonMenu extends StatelessWidget {
  final String name;
  final Function() onPressed;
  const CustomButtonMenu({
    super.key,
    required this.name,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(26, 0, 0, 0), // Establecer el color de fondo como transparente
        onPrimary:const Color.fromARGB(26, 0, 0, 0), // Establecer el color del overlay al presionar como transparente
        shadowColor: const Color.fromARGB(26, 0, 0, 0),
        
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0), // Establecer el radio en 0 para quitar bordes redondeados
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(
          color: Color.fromARGB(255, 29, 21, 21),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        
        
      ),
    );
  }
}