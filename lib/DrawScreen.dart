// DrawScreen.dart
import 'package:flutter/material.dart';

class DrawScreen extends StatefulWidget {
  @override
  _DrawScreenState createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  List<Winner> winners = [];

  void _performDraw() {
    // Logique pour sélectionner les gagnants
    winners.add(Winner(name: 'John Doe', amount: 500.0));
    winners.add(Winner(name: 'Jane Smith', amount: 300.0));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: winners.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(winners[index].name[0]),
                  ),
                  title: Text(winners[index].name),
                  subtitle: Text('Montant: ${winners[index].amount.toStringAsFixed(2)} €'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _performDraw,
              child: Text('Effectuer le tirage'),
            ),
          ),
        ],
      ),
    );
  }
}

class Winner {
  final String name;
  final double amount;

  Winner({
    required this.name,
    required this.amount,
  });
}