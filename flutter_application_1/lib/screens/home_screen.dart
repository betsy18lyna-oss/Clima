import 'package:flutter/material.dart';
import 'details_screen.dart';

// Pantalla Principal
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Clima Actual"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Nombre de la ciudad
            Text(
              "Quito",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // Icono del clima
            Icon(
              Icons.wb_sunny,
              size: 100,
              color: Colors.orange,
            ),

            SizedBox(height: 20),

            // Temperatura simulada
            Text(
              "25°C",
              style: TextStyle(fontSize: 40),
            ),

            SizedBox(height: 40),

            // Botón para ir a la pantalla de detalles
            ElevatedButton(
              child: Text("Ver Detalles"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
