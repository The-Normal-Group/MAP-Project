import '../../models/user.dart';
import '../../models/token.dart';

abstract class TournamentService {
  Future<Token> authenticate({String login, String password});
  Future<User> register({User user});
}
