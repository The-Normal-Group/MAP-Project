import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../../models/token.dart';
import '../rest.dart';
import './tournament_service.dart';

class TournamentServiceRest implements TournamentService {
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
}
