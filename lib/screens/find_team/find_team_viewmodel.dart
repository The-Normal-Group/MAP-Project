import '../../models/team.dart';
import '../viewmodel.dart';
import '../../app/dependencies.dart';
import '../user/user_viewmodel.dart';
import '../../models/token.dart';
import '../../services/auth/auth_service.dart';

class FindTeamViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  List<Team> _teams;

  get itemCount => _teams.length;
  Team getTeamByIndex(index) => _teams[index];

  UserViewmodel get _userViewmodel => dependency();
  Token get token => _userViewmodel.token;
  set token(Token value) => update(() async => _userViewmodel.token = value);

  //final TeamService _service = dependency();

  FindTeamViewmodel() {
    getTeamList();
  }

  void getTeamList() async {
    turnBusy();
    _teams = await _service.getTeamList(token);
    turnIdle();
  }
}
