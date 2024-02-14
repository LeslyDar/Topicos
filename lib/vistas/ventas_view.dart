
import 'package:app_negocio/widgets/custom_rectangle.dart';
import 'package:flutter/material.dart';

class Ventasview extends StatelessWidget {
  final String tittle;
  final String first;
  final String second;
  final Color color;
  const Ventasview({super.key, 
    required this.tittle,
    required this.color, 
    required this.first, 
    required this.second, 
    });

  
  @override
  Widget build(BuildContext context) {
    tittle;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(tittle),
        titleTextStyle: TextStyle(
          fontSize: 30,
        ),
        backgroundColor: color,

      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/shop.jpg'), // Reemplaza con la ruta de tu imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.60), // Ajusta el valor de opacidad según tus necesidades
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 3,
            ),
            CustomButtonMenu(
              name: first,
              onPressed: () {
                
                },
            ),
            SizedBox(
              height: 3,
            ),
            CustomButtonMenu(
              name: second,
              onPressed: () {

                },
            ),
            ],
          ),
        ],
      ),
    );
  }
}