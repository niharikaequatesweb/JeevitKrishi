import 'package:flutter/material.dart';

class MachineryScreen extends StatelessWidget {
  final List<Map<String, String>> machineryList = [
    {
      "name": "Tractor",
      "brand": "Mahindra",
      "model": "575 DI",
      "status": "Available",
      "lastService": "2025-07-10",
    },
    {
      "name": "Rotavator",
      "brand": "John Deere",
      "model": "RT100",
      "status": "In Use",
      "lastService": "2025-06-28",
    },
    {
      "name": "Sprayer",
      "brand": "Kisan Kraft",
      "model": "KK-PS200",
      "status": "Available",
      "lastService": "2025-08-01",
    },
  ];

  MachineryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Machinery'), backgroundColor: Colors.green),
      body: ListView.builder(
        itemCount: machineryList.length,
        itemBuilder: (context, index) {
          final machine = machineryList[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    machine["name"] ?? "",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Brand: ${machine["brand"]}"),
                  Text("Model: ${machine["model"]}"),
                  Text("Status: ${machine["status"]}"),
                  Text("Last Service: ${machine["lastService"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
