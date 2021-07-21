import 'package:exercise3/models/team.dart';
import 'package:flutter/material.dart';
import '../../view.dart';
import '../view_my_teams_viewmodel.dart';

class Body extends StatelessWidget {
  final ViewMyTeamsViewmodel _findTeamViewmodel = ViewMyTeamsViewmodel();
  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: _findTeamViewmodel,
      builder: (_context, viewmodel, _child) {
        final ViewMyTeamsViewmodel _viewmodel = viewmodel;

        return ListView.builder(
          itemCount: _viewmodel.itemCount,
          //itemCount: 3,
          itemBuilder: (context, index) {
            final Team _team = _viewmodel.getTeamByIndex(index);
            return Card(
              child: ListTile(
                onTap: () {
                  //Navigator.pushNamed(context, ""); the name of the route of the new page you will create (PLEASE REFER TO THE DOC)
                },
                title: Text(_team.name),
                //title: Text("Team1"),
              ),
            );
          },
        );
      },
    );
  }
}
