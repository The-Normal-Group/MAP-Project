import 'package:exercise3/models/team.dart';
import 'package:flutter/material.dart';
import '../../view.dart';
import '../find_team_viewmodel.dart';


class Body extends StatelessWidget {
  final FindTeamViewmodel _findTeamViewmodel = FindTeamViewmodel();
  @override
  Widget build(BuildContext context) {
    return View(
        viewmodel: _findTeamViewmodel,
        builder: (_context, viewmodel, _child) {
          final FindTeamViewmodel _viewmodel = viewmodel;

          return ListView.builder(
            //itemCount: _viewmodel.itemCount,
            itemCount: 3,
            itemBuilder: (context, index) {
            //final Team _team = _viewmodel.getTeamByIndex(index);
              return Card(
                child: ListTile(
                  //title: Text(_team.name),
                  title: Text("Team1"),
                ),
              );
            },
          );
        },
      );
  }
}