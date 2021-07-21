import '../../app/dependencies.dart';
import '../../services/auth/auth_service.dart';
import '../../models/user.dart';
import '../../models/token.dart';
import '../../models/team.dart';
import '../viewmodel.dart';

class UserViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  User _user;
  Token _token;
  int _selectedTournament;
  int _selectedTeam;
  List<Team> _teamsDisplayed = List();

  get teamsDisplayed => _teamsDisplayed;
  set teamsDisplayed(value) => _teamsDisplayed = value;

  get selectedTeam => _selectedTeam;
  set selectedTeam(value) => _selectedTeam = value;

  get selectedTournament => _selectedTournament;
  set selectedTournament(value) => _selectedTournament = value;

  get token => _token;
  set token(value) => _token = value;

  get user => _user;
  set user(value) => _user = value;
  bool get isUserSignedIn => _user != null;

  void authenticate(User user) async {
    _token =
        await _service.authenticate(login: user.login, password: user.password);
    _user = _token.user;
  }
}
