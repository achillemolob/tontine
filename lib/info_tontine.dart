import 'package:flutter/material.dart';

class TontineInfoPage extends StatefulWidget {
  @override
  _TontineInfoPageState createState() => _TontineInfoPageState();
}

class _TontineInfoPageState extends State<TontineInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informations sur la Tontine'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nous sommes une application sécurisée de tontine en ligne',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                  'Vous pouvez épargner et effectuer vos dépôts en toute sécurité ici.',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}

// Autres widgets personnalisés pour cette page