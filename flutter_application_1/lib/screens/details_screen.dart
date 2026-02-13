import 'package:flutter/material.dart';

// Pantalla de Detalles
class DetailsScreen extends StatelessWidget {

  // Lista simulada del pronóstico
  final List<String> forecast = [
    "Lunes - 26°C - Soleado",
    "Martes - 22°C - Nublado",
    "Miércoles - 20°C - Lluvia",
    "Jueves - 24°C - Parcialmente nublado",
    "Viernes - 27°C - Soleado"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles del Clima"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            // Row para humedad y viento
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // Humedad
                Column(
                  children: [
                    Icon(Icons.water_drop, color: Colors.blue),
                    SizedBox(height: 5),
                    Text("Humedad"),
                    Text("60%"),
                  ],
                ),

                // Viento
                Column(
                  children: [
                    Icon(Icons.air, color: Colors.grey),
                    SizedBox(height: 5),
                    Text("Viento"),
                    Text("15 km/h"),
                  ],
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              "Pronóstico semanal",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 10),

            // ListView para mostrar el pronóstico
            Expanded(
              child: ListView.builder(
                itemCount: forecast.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.wb_cloudy),
                      title: Text(forecast[index]),
                    ),
                  );
                },
              ),
            ),

            // Botón para regresar
            ElevatedButton(
              child: Text("Regresar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
