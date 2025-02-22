import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Recordatorios",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Diseo(
              icon: Icons.add_alarm,
              title: "Lenguajes de programacion",
              description:
                  "Clase impartida los dias Lunes a Juevea 6:00 PM a 7:00 PM",
              color: Colors.green,
            ),
            Diseo(
              icon: Icons.shopping_cart,
              title: "Catedratico",
              description:
                  "Ingeniero Juan Alvarenga",
              color: Colors.orange,
            ),
            Diseo(
              icon: Icons.people,
              title: "Alumna",
              description:
                  "Andrea Maria Caballero Mejia 20182030489",
              color: Colors.yellow[700]!,
            ),
            Diseo(
              icon: Icons.list,
              title: "Edificio y Aula",
              description:
                  "Edificio: 5 Aula: 207 Segundo piso",
              color: Colors.blue,
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print("Botón Continuar presionado");
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Continuar",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Diseo extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  Diseo(
      {required this.icon,
      required this.title,
      required this.description,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: color, size: 30),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
    );
  }
}