import 'package:flutter/material.dart';

import '../screens/login/login_screen.dart';
import '../screens/register/register_screen.dart';
import '../screens/main/main_screen.dart';
import '../screens/tournament_organizers_menu/tournament_organizer_screen.dart';
import '../screens/team_organizers_menu/team_organizer_screen.dart';

Route<dynamic> createRoute(settings) {
  switch (settings.name) {
    case '/':
    case '/main':
      return MainScreen.route();

    case '/login':
      return LoginScreen.route();
    case '/Register':
      return RegisterScreen.route();
    case '/AddTournament':
      return TournamentOrganizerScreen.route();
    case '/AddTeam':
      return TeamOrganizerScreen.route();
  }

  return null;
}
