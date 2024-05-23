import 'package:flutter/material.dart';

class PortefeuilleScreen extends StatefulWidget {
  @override
  _PortefeuilleScreenState createState() => _PortefeuilleScreenState();
}

class _PortefeuilleScreenState extends State<PortefeuilleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portefeuille'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mes tontines'),
            SizedBox(height: 16.0),
            // Afficher la liste des tontines de l'utilisateur
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Tontine 1'),
                    subtitle: Text('Montant: 500 €, Échéance: 06/2023'),
                  ),
                  ListTile(
                    title: Text('Tontine 2'),
                    subtitle: Text('Montant: 1000 €, Échéance: 12/2023'),
                  ),
                  // Ajouter d'autres tontines
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text('Mes emprunts'),
            SizedBox(height: 16.0),
            // Afficher la liste des emprunts de l'utilisateur
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Emprunt 1'),
                    subtitle: Text('Montant: 1000 €, Durée: 12 mois'),
                  ),
                  ListTile(
                    title: Text('Emprunt 2'),
                    subtitle: Text('Montant: 2500 €, Durée: 24 mois'),
                  ),
                  // Ajouter d'autres emprunts
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}