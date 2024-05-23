import 'package:flutter/material.dart';
import 'package:tontine/TontineListScreen.dart';
import 'package:tontine/SettingsScreen.dart';
import 'package:tontine/PortefeuilleScreen.dart';
import 'package:tontine/CreditScreen.dart';
import 'package:tontine/EmpruntScreen.dart';
import 'package:tontine/chats.dart';
import 'package:tontine/info_tontine.dart.';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.0),
            Text(
              'Bienvenue dans notre tontine',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                children: [
                  _buildFeatureCard(
                    icon: Icons.pets,
                    title: 'Chats',
                    onTap: () {
                      // Naviguer vers l'écran des chats
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatsPage()),
                      );


                    },
                  ),

                  _buildFeatureCard(
                    icon: Icons.info,
                    title: 'Info App',
                    onTap: () {
                      // Naviguer vers l'écran d'informations sur la tontine
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TontineInfoPage()),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.payment,
                    title: 'Payer Cotisation',
                    onTap: () {
                      // Naviguer vers l'écran de paiement de cotisation
                    },
                  ),

                  _buildFeatureCard(
                    icon: Icons.attach_money,
                    title: 'Emprunt',
                    onTap: () {
                      // Navigue vers l'écran d'épargne
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EmpruntScreen()),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.monetization_on,
                    title: 'Tontine',
                    onTap: () {
                      // Navigue vers l'écran de tontine
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TontineListScreen()),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.credit_card,
                    title: 'Crédit',
                    onTap: () {
                      // Navigue vers l'écran de crédit
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreditScreen()),
                      );
                    },
                  ),
                  _buildFeatureCard(
                    icon: Icons.account_balance_wallet,
                    title: 'Portefeuille',
                    onTap: () {
                      // Navigue vers l'écran de portefeuille
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PortefeuilleScreen()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Accueil'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Ajouter la fonctionnalité de notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Ajouter la fonctionnalité de profil
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigue vers l'écran des paramètres
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 1.0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 20.0,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(height: 4.0),
            Text(
              title,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}