import 'package:flutter/material.dart';

class LanguageSelectionScreen extends StatelessWidget {
  final Function(Locale) onLocaleSelected;
  const LanguageSelectionScreen({required this.onLocaleSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Center(
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.green.withOpacity(0.2), blurRadius: 16),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.language, size: 64, color: Colors.green[700]),
              SizedBox(height: 16),
              Text(
                'Select Language',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[700],
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () => onLocaleSelected(Locale('en')),
                child: Text('English'),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                  minimumSize: Size(double.infinity, 40),
                ),
                onPressed: () => onLocaleSelected(Locale('hi')),
                child: Text('हिन्दी'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
