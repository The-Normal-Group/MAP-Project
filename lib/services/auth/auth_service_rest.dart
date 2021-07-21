import 'package:exercise3/models/tournament.dart';

import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../../models/token.dart';
import '../../models/team.dart';
import '../../models/tournament.dart';
import '../rest.dart';
import 'auth_service.dart';

class AuthServiceRest implements AuthService {
  RestService get rest => dependency();

  // Future<User> authenticate({String login, String password}) async {
  //   final List json = await rest.get('users/1');
  //   if (json == null || json.length == 0) return null;

  //   final _user = User.fromJson(json[0]);
  //   return _user;
  // }

  Future<Token> authenticate({String login, String password}) async {
    Map user = {'username': '$login', 'password': '$password'};
    final json = await rest.post('login', data: user);
    print('$json');
    if (json == null || json.length == 0) return null;

    rest.openSession(json['accessToken']);
    final _user = Token.fromJson(json);
    return _user;
  }

  Future<User> register({User user}) async {
    print('${user.toJson()}');
    final response = await rest.post('users', data: user.toJson());
    if (response == null || response.length == 0) return null;
    print("$response");
    final _user = User.fromJson(response);
    return _user;
  }

  Future<Tournament> createTournament(
      {Tournament tournament, Token token}) async {
    print('${tournament.toJson()}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token.token}'
    };
    final response = await rest.post('tournaments',
        data: tournament.toJson(), headers: headers);
    if (response == null || response.length == 0) return null;
    print("$response");
    final _tournament = Tournament.fromJson(response);
    return _tournament;
  }

  Future<Team> createTeam({Team team, Token token}) async {
    print('${team.toJson()}');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token.token}'
    };
    final response =
        await rest.post('teams', data: team.toJson(), headers: headers);
    if (response == null || response.length == 0) return null;
    print("$response");
    final _team = Team.fromJson(response);
    return _team;
  }
}
