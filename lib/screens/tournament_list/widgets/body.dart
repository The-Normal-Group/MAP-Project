import 'package:flutter/material.dart';
import '../tournament_list_viewmodel.dart';
import '../../../models/tournament.dart';
import '../../view.dart';

//this list is for trying only
List<Tournament> tour = [
  Tournament(
      name: "tournament one ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament two ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament three ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament four ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament five ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament six ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
  Tournament(
      name: "tournament one ",
      skillLevel: 'hard',
      prizePool: 1000,
      description: 'demmo'),
];

class Body extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final double margin = 20.0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tour.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(onTap: () {}, title: Text(tour[index].name)),
        );
      },
    );
  }
}
