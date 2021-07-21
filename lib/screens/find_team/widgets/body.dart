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
        if (!_viewmodel.searched) {
          _viewmodel.search("");
          _viewmodel.searched = true;
        }
        return ListView.builder(
          itemCount: _viewmodel.searchCount,
          //itemCount: 3,
          itemBuilder: (context, index) {
            final Team _team = _viewmodel.getSearchByIndex(index);
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
