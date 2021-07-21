import '../../models/team.dart';
import '../viewmodel.dart';
import '../../app/dependencies.dart';
import '../user/user_viewmodel.dart';
import '../../models/token.dart';
import '../../services/auth/auth_service.dart';

class FindTeamViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  List<Team> _teams;

  List get teamsDisplayed => _userViewmodel.teamsDisplayed;
  set teamsDisplayed(value) =>
      update(() async => _userViewmodel.teamsDisplayed = value);

  String searchString = "";

  bool get searched => _userViewmodel.searchTe;
  set searched(value) => update(() async => _userViewmodel.searchTe = value);

  get itemCount => _teams.length;
  get searchCount => teamsDisplayed.length;

  Team getTeamByIndex(index) => _teams[index];

  Team getSearchByIndex(index) => teamsDisplayed[index];

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

  void search(String value) {
    teamsDisplayed.clear();
    for (int i = 0; i < _teams.length; i++) {
      Team data = _teams[i];
      if (data.name.toString().toLowerCase().contains(value.toLowerCase())) {
        teamsDisplayed.add(data);
      }
    }
    searchString = value;
    print("$teamsDisplayed");
  }
}
