import 'package:flutter/material.dart';

class WaterTestingScreen extends StatelessWidget {
  final List<Map<String, String>> waterTests = [
    {
      "location": "Pond A",
      "ph": "7.0",
      "turbidity": "Low",
      "hardness": "Medium",
      "salinity": "Low",
      "date": "2025-08-14",
    },
    {
      "location": "Well B",
      "ph": "6.8",
      "turbidity": "Medium",
      "hardness": "High",
      "salinity": "Medium",
      "date": "2025-08-10",
    },
    {
      "location": "Canal C",
      "ph": "7.5",
      "turbidity": "High",
      "hardness": "Low",
      "salinity": "High",
      "date": "2025-08-05",
    },
  ];

  WaterTestingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Testing'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: waterTests.length,
        itemBuilder: (context, index) {
          final test = waterTests[index];
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
                  Text("Turbidity: ${test["turbidity"]}"),
                  Text("Hardness: ${test["hardness"]}"),
                  Text("Salinity: ${test["salinity"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
