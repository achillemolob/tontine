// MembersScreen.dart
import 'package:flutter/material.dart';

class MembersScreen extends StatefulWidget {
  @override
  _MembersScreenState createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  List<Member> members = [
    Member(name: 'John Doe', contribution: 50.0),
    Member(name: 'Jane Smith', contribution: 75.0),
    Member(name: 'Bob Johnson', contribution: 100.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(members[index].name[0]),
            ),
            title: Text(members[index].name),
            subtitle: Text('Contribution: ${members[index].contribution.toStringAsFixed(2)} €'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ajouter un nouveau membre
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Member {
  final String name;
  final double contribution;

  Member({
    required this.name,
    required this.contribution,
  });
}