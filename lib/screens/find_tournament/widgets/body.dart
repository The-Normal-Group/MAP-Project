import 'package:exercise3/models/team.dart';
import 'package:exercise3/models/tournament.dart';
import 'package:flutter/material.dart';
import '../../view.dart';
import '../find_tournament_viewmodel.dart';

class Body extends StatelessWidget {
  final FindTournamentViewmodel _findTournamentViewmodel =
      FindTournamentViewmodel();
  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: _findTournamentViewmodel,
      builder: (_context, viewmodel, _child) {
        final FindTournamentViewmodel _viewmodel = viewmodel;

        return ListView.builder(
          itemCount: _viewmodel.itemCount,
          //itemCount: 3,
          itemBuilder: (context, index) {
            final Tournament _tournament =
                _viewmodel.getTournamentByIndex(index);
            return Card(
              child: ListTile(
                onTap: () {
                  //Navigator.pushNamed(context, ""); the name of the route of the new page you will create (PLEASE REFER TO THE DOC)
                },
                title: Text(_tournament.name),
                //title: Text("Team1"),
              ),
            );
          },
        );
      },
    );
  }
}
