import 'package:flutter/material.dart';

class SoilTestingScreen extends StatelessWidget {
  final List<Map<String, String>> soilTests = [
    {
      "location": "Farm A",
      "ph": "6.5",
      "nitrogen": "Medium",
      "phosphorus": "High",
      "potassium": "Low",
      "date": "2025-08-01",
    },
    {
      "location": "Farm B",
      "ph": "7.2",
      "nitrogen": "High",
      "phosphorus": "Medium",
      "potassium": "Medium",
      "date": "2025-07-15",
    },
    {
      "location": "Farm C",
      "ph": "5.8",
      "nitrogen": "Low",
      "phosphorus": "Low",
      "potassium": "High",
      "date": "2025-08-10",
    },
  ];

  SoilTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soil Testing'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: soilTests.length,
        itemBuilder: (context, index) {
          final test = soilTests[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    test["location"] ?? "",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Test Date: ${test["date"]}"),
                  SizedBox(height: 4),
                  Text("pH Level: ${test["ph"]}"),
                  Text("Nitrogen: ${test["nitrogen"]}"),
                  Text("Phosphorus: ${test["phosphorus"]}"),
                  Text("Potassium: ${test["potassium"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
