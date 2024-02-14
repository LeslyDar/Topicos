import 'dart:io';

import 'package:app_negocio/vistas/almacen_view.dart';
import 'package:app_negocio/vistas/registros_view.dart';
import 'package:app_negocio/vistas/ventas_view.dart';
import 'package:app_negocio/widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Punto de Venta',
        style: GoogleFonts.lato( // Reemplaza con el tipo de letra que prefieras
            textStyle: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(148, 85, 27, 1),
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
            children: [
              Container(
                width: 500.0,
                height: 450.0,
                margin: EdgeInsets.all(20.0), // Ajusta los márgenes según tus necesidades
                padding: EdgeInsets.all(10.0), // Ajusta el espacio interno según tus necesidades 
                
                color: Color.fromARGB(255, 255, 241, 236),
                child: Text(
                  'Hola, Bienvenido/a...'+'\n\n   Presione cualquiera de los botones de abajo según su acción a realizar.',
                  style: GoogleFonts.lato( // Reemplaza con el tipo de letra que prefieras
                  textStyle: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonHome(
                    name: 'Ventas',
                    color: Color.fromARGB(255, 221, 162, 95),
                    onPressed: () {
                      
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Ventasview(tittle: 'Ventas',color: Colors.green,first: 'Generar ventas',second: 'Generar devoluciones');
                          },
                        ),
                      );
                    }, txcolor: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CustomButtonHome(
                    name: 'Registros',
                    color: Color.fromARGB(255, 221, 162, 95),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Registroview(tittle: 'Registros',color: Colors.blue,first: 'Mostrar ventas',second: 'Mostrar devoluciones');
                          },
                        ),
                      );
                    }, txcolor: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                    height: 20,
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonHome(
                    name: 'Inventario',
                    color: Color.fromARGB(255, 221, 162, 95),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const Almacenview(tittle: 'Almacén',color: Colors.orange,first: 'Dar de Alta',second: 'Dar de baja',three: 'Mostrar Almacén');
                          },
                        ),
                      );
                    }, txcolor: Colors.black,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CustomButtonHome(
                    name: 'Salir',
                    color: Color.fromARGB(255, 221, 162, 95),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            exit(0);
                          },
                        ),
                      );
                    }, txcolor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}