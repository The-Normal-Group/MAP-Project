import 'package:flutter/material.dart';

import 'widgets/body.dart';
import 'widgets/bar.dart';


class CreateTeamScreen extends StatefulWidget {
  static Route route() =>
      MaterialPageRoute(builder: (context) => CreateTeamScreen());

  @override
  CreateTeamScreenState createState() => CreateTeamScreenState();
}

class CreateTeamScreenState extends State<CreateTeamScreen> {
    
  String _username, _password;
  bool hidePassword = true, showError = false;

  get username => _username;
  set username(value) => setState(() => _username = value);

  get password => _password;
  set password(value) => setState(() => _password = value);

  bool getHidePassword() {
    return hidePassword;
  }

  void setHidePassword() {
    setState(() {
      this.hidePassword = !hidePassword;
    });
  }

  bool getShowError() {
    return showError;
  }

  void setShowError() {
    setState(() {
      this.showError = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          body: Body(
            state: this,
          ),
          appBar: Bar(),
       )
      )
    );
  }
}