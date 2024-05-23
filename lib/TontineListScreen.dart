// TontineListScreen.dart
import 'package:flutter/material.dart';

enum TontineType { daily, weekly, monthly }
enum PaymentMethod { momo, orangeMoney, bank }

class Tontine {
  final String name;
  final TontineType type;
  final PaymentMethod paymentMethod;
  final int participants;
  final double montant;

  Tontine({
    required this.name,
    required this.type,
    required this.paymentMethod,
    required this.participants,
    required this.montant,
  });
}

class TontineListScreen extends StatefulWidget {
  @override
  _TontineListScreenState createState() => _TontineListScreenState();
}

class _TontineListScreenState extends State<TontineListScreen> {
  List<Tontine> tontines = [
    Tontine(
      name: 'Tontine A',
      type: TontineType.weekly,
      paymentMethod: PaymentMethod.momo,
      participants: 10,
      montant: 50000.0,
    ),
    Tontine(
      name: 'Tontine B',
      type: TontineType.monthly,
      paymentMethod: PaymentMethod.orangeMoney,
      participants: 15,
      montant: 75000.0,
    ),
    Tontine(
      name: 'Tontine C',
      type: TontineType.daily,
      paymentMethod: PaymentMethod.bank,
      participants: 8,
      montant: 40000.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Tontines'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Naviguer vers l'écran pour créer une nouvelle tontine
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: tontines.length,
        itemBuilder: (context, index) {
          final tontine = tontines[index];
          return ListTile(
            leading: Icon(Icons.assignment),
            title: Text(tontine.name),
            subtitle: Text(
              'Type: ${_getTontineTypeString(tontine.type)} | '
                  'Paiement: ${_getPaymentMethodString(tontine.paymentMethod)} | '
                  'Participants: ${tontine.participants} | '
                  'Montant: ${tontine.montant.toStringAsFixed(2)} FCFA',
            ),
            onTap: () {
              // Naviguer vers l'écran détaillé de la tontine
            },
          );
        },
      ),
    );
  }

  String _getTontineTypeString(TontineType type) {
    switch (type) {
      case TontineType.daily:
        return 'Journalière';
      case TontineType.weekly:
        return 'Hebdomadaire';
      case TontineType.monthly:
        return 'Mensuelle';
    }
  }

  String _getPaymentMethodString(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.momo:
        return 'MoMo';
      case PaymentMethod.orangeMoney:
        return 'Orange Money';
      case PaymentMethod.bank:
        return 'Bancaire';
    }
  }
}