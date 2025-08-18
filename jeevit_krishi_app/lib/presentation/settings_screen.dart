import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final Function(Locale) onLocaleChanged;
  const SettingsScreen({super.key, required this.onLocaleChanged});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Change Language'),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (_) => Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('English'),
                        onTap: () {
                          onLocaleChanged(Locale('en'));
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text('हिन्दी'),
                        onTap: () {
                          onLocaleChanged(Locale('hi'));
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
