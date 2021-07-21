import '../../models/user.dart';
import 'auth_service.dart';
import '../../models/token.dart';
import '../../models/tournament.dart';
import '../../models/team.dart';

class AuthServiceMock implements AuthService {
  Future<Token> authenticate({String login, String password}) async {
    // User _user = _users.firstWhere(
    //     (user) => user.login == login && user.password == password,
    //     orElse: () => null);
    // return _user;
    return null;
  }

  Future<User> register({User user}) {}

  Future<Tournament> createTournament({Tournament tournament, Token token}) {}
  Future<Team> createTeam({Team team, Token token}) {}
}

final _users = <User>[
  // User(
  //     id: 1,
  //     login: 'hello',
  //     name: 'Testing User',
  //     password: 'world',
  //     photoUrl: 'https://randomuser.me/api/portraits/thumb/men/75.jpg'),
  // User(
  //     id: 2,
  //     login: 'user2',
  //     name: 'Testing User 2',
  //     password: '123',
  //     photoUrl: 'https://randomuser.me/api/portraits/thumb/women/75.jpg'),
];
