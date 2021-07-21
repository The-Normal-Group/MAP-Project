import '../../models/user.dart';
import '../viewmodel.dart';
import '../../app/dependencies.dart';
import '../user/user_viewmodel.dart';
import '../../models/token.dart';
import '../../services/auth/auth_service.dart';

class MemberListViewmodel extends Viewmodel {
  AuthService get _service => dependency();
  List<User> _users;

  List get usersDisplayed => _userViewmodel.usersDisplayed;



  get itemCount => _users.length;
  User getUserByIndex(index) => _users[index];


  UserViewmodel get _userViewmodel => dependency();
  Token get token => _userViewmodel.token;
  
  
  set token(Token value) => update(() async => _userViewmodel.token = value);
  set id(value) => _userViewmodel.selectedUser = value;

  //final TeamService _service = dependency();

  MemberListViewmodel() {
    getUserList();
  }

  void getUserList() async {
    turnBusy();
    _users = await _service.getUserList(token);
    turnIdle();
  }
  
}