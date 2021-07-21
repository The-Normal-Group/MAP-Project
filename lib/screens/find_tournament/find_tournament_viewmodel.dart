import '../../models/tournament.dart';
import '../viewmodel.dart';
import '../../app/dependencies.dart';
import '../user/user_viewmodel.dart';
import '../../models/token.dart';
import '../../services/auth/auth_service.dart';

class FindTournamentViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  List<Tournament> _tournaments;

  get itemCount => _tournaments.length;
  Tournament getTournamentByIndex(index) => _tournaments[index];

  UserViewmodel get _userViewmodel => dependency();
  Token get token => _userViewmodel.token;
  set token(Token value) => update(() async => _userViewmodel.token = value);

  //final TeamService _service = dependency();

  FindTournamentViewmodel() {
    getTournamentList();
  }

  void getTournamentList() async {
    turnBusy();
    _tournaments = await _service.getTournamentList(token);
    turnIdle();
  }
}
