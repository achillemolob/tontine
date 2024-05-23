import 'package:flutter/material.dart';

class CreditScreen extends StatefulWidget {
  @override
  _CreditScreenState createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crédit'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Historique des crédits'),
            SizedBox(height: 16.0),
            // Afficher la liste des crédits de l'utilisateur
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Crédit 1'),
                    subtitle: Text('Montant: 1000 francs, Durée: 12 mois'),
                  ),
                  ListTile(
                    title: Text('Crédit 2'),
                    subtitle: Text('Montant: 2500 francs, Durée: 24 mois'),
                  ),
                  // Ajouter d'autres crédits
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.centerRight,
              child: FloatingActionButton(
                onPressed: () {
                  // Logique pour effectuer un crédit
                },
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}