import 'package:exercise3/screens/find_team/find_team_screen.dart';
import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';
import '../screens/register/register_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/tournament_organizers_menu/tournament_organizer_screen.dart';
import '../screens/team_organizers_menu/team_organizer_screen.dart';
import '../screens/update_tournament/update_tournament_screen.dart';
import '../screens/manage_account/manage_account_screen.dart';
import '../screens/find_team/find_team_screen.dart';
import '../screens/find_tournament/find_tournament_screen.dart';
import '../screens/view_my_teams/view_my_teams_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/main':
      return MainScreen.route();

    case '/login':
      return LoginScreen.route();
    case '/manageAccount':
      return ManageAccountScreen.route();
    case '/Register':
      return RegisterScreen.route();
    case '/Organizer':
      return TournamentOrganizerScreen.route();
    case '/AddTeam':
      return TeamOrganizerScreen.route();
    case '/updateTournament':
      return UpdateTournamentScreen.route();
    case '/FindTeam':
      return FindTeamScreen.route();
    case '/FindTournament':
      return FindTournamentScreen.route();
    case '/ViewMyTeams':
      return ViewMyTeamsScreen.route();
  }

  return null;
}
