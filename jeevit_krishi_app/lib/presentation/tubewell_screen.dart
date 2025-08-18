import 'package:flutter/material.dart';

class TubewellScreen extends StatelessWidget {
  final List<Map<String, String>> tubewellList = [
    {
      "location": "Field 1",
      "depth": "120 ft",
      "status": "Operational",
      "waterLevel": "15 ft",
      "lastInspection": "2025-07-30",
    },
    {
      "location": "Field 2",
      "depth": "90 ft",
      "status": "Needs Maintenance",
      "waterLevel": "20 ft",
      "lastInspection": "2025-08-12",
    },
    {
      "location": "Village Center",
      "depth": "150 ft",
      "status": "Operational",
      "waterLevel": "10 ft",
      "lastInspection": "2025-07-25",
    },
  ];

  TubewellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tubewell'), backgroundColor: Colors.green),
      body: ListView.builder(
        itemCount: tubewellList.length,
        itemBuilder: (context, index) {
          final tubewell = tubewellList[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tubewell["location"] ?? "",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Depth: ${tubewell["depth"]}"),
                  Text("Water Level: ${tubewell["waterLevel"]}"),
                  Text("Status: ${tubewell["status"]}"),
                  Text("Last Inspection: ${tubewell["lastInspection"]}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
