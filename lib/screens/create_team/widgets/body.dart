import 'package:flutter/material.dart';
import '../create_team_screen.dart';

class Body extends StatelessWidget {
  Body({state}) : _state = state;
  final CreateTeamScreenState _state;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double margin = 20.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Form(
          key: formKey,
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // text

              SizedBox(height: 60),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Team Name",
                  border: OutlineInputBorder(),
                  // contentPadding:
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter your team name!";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: margin),

              DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text("1"),
                    value: "1",
                  ),
                  DropdownMenuItem(
                    child: Text("2"),
                    value: "2",
                  ),
                  DropdownMenuItem(
                    child: Text("3"),
                    value: "3",
                  ),
                  DropdownMenuItem(
                    child: Text("4"),
                    value: "4",
                  ),
                  DropdownMenuItem(
                    child: Text("5"),
                    value: "5",
                  ),
                ],
                onChanged: (value) {},
                hint: Text("Team Capacity"),
                //put a value here!
                validator: (value) {
                  if (value == null) {
                    return "Please select your team capacity!";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: margin),

              TextFormField(
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),

                  // contentPadding:
                ),
                onChanged: (value) {},
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter your team description! ";
                  } else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 50),

              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      print("Proceed to submit !");
                    }
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
