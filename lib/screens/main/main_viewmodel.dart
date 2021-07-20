import '../../app/dependencies.dart';
import '../../services/counter/counter_service.dart';
import '../../models/user.dart';
import '../../models/token.dart';
import '../user/user_viewmodel.dart';
import '../viewmodel.dart';

class MainViewmodel extends Viewmodel {
  UserViewmodel get _userViewmodel => dependency();
  User get user => _userViewmodel.user;
  set user(User value) => update(() async => _userViewmodel.user = value);

  Token get token => _userViewmodel.token;
  set token(Token value) => update(() async => _userViewmodel.token = value);

  void authenticate(User user) =>
      update(() async => _userViewmodel.authenticate(user));

  bool get isUserSignedIn => _userViewmodel.isUserSignedIn;
}
