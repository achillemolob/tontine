import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _language = 'fr';
  bool _notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Réglages'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.send),
              title: Text('Envoyer une invitation'),
              onTap: () {
                // Logique pour envoyer une invitation
              },
            ),
            ListTile(
              leading: Icon(Icons.announcement),
              title: Text('Faire une annonce'),
              onTap: () {
                // Logique pour faire une annonce
              },
            ),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Mes tontines'),
              onTap: () {
                // Logique pour afficher les tontines de l'utilisateur
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Créer une cotisation'),
              onTap: () {
                // Logique pour créer une cotisation
              },
            ),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Effectuer un emprunt'),
              onTap: () {
                // Logique pour effectuer un emprunt
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Aide'),
              onTap: () {
                // Logique pour afficher l'aide
              },
            ),
            Divider(),
            Text('Paramètres'),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.language),
                SizedBox(width: 8.0),
                Expanded(
                  child: DropdownButton<String>(
                    value: _language,
                    onChanged: (value) {
                      setState(() {
                        _language = value!;
                      });
                    },
                    items: [
                      DropdownMenuItem(value: 'fr', child: Text('Français')),
                      DropdownMenuItem(value: 'en', child: Text('Anglais')),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 8.0),
                Checkbox(
                  value: _notifications,
                  onChanged: (value) {
                    setState(() {
                      _notifications = value!;
                    });
                  },
                ),
                Text('Activer les notifications'),
              ],
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Enregistrer les paramètres
                },
                child: Text('Enregistrer'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}