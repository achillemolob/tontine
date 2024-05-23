import 'package:flutter/material.dart';

class EmpruntScreen extends StatefulWidget {
  @override
  _EmpruntScreenState createState() => _EmpruntScreenState();
}

class _EmpruntScreenState extends State<EmpruntScreen> {
  int _montantEmprunt = 0;
  int _dureeEmprunt = 0;
  double _tauxInteret = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emprunt'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Montant de l\'emprunt',
              ),
              onChanged: (value) {
                setState(() {
                  _montantEmprunt = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Durée de l\'emprunt (en mois)',
              ),
              onChanged: (value) {
                setState(() {
                  _dureeEmprunt = int.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Taux d\'intérêt (en %)',
              ),
              onChanged: (value) {
                setState(() {
                  _tauxInteret = double.parse(value);
                });
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Logique pour effectuer l'emprunt
              },
              child: Text('Effectuer l\'emprunt'),
            ),
          ],
        ),
      ),
    );
  }
}