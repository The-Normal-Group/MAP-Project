import '../../models/user.dart';
import '../../models/token.dart';
import '../../models/tournament.dart';

abstract class AuthService {
  Future<Token> authenticate({String login, String password});
  Future<User> register({User user});
  Future<Tournament> createTournament({Tournament tournament, Token token});
}
