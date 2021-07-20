import 'package:flutter/material.dart';
import '../update_tournament_viewmodel.dart';
import '../../../models/tournament.dart';
import '../../view.dart';

class Body extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final double margin = 20.0;

  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: UpdateTournamentViewmodel(),
      builder: (context, viewmodel, _) => SingleChildScrollView(
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
                    labelText: "New Tournament Name",
                    border: OutlineInputBorder(),
                    // contentPadding:
                  ),
                  onChanged: (value) {
                    viewmodel.name = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Required";
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
                      child: Text("Beginner"),
                      value: "Beginner",
                    ),
                    DropdownMenuItem(
                      child: Text("Intermediate"),
                      value: "Intermediate",
                    ),
                    DropdownMenuItem(
                      child: Text("Advanced"),
                      value: "Advanced",
                    ),
                  ],
                  onChanged: (value) {
                    viewmodel.skillLevel = value;
                  },
                  hint: Text("Updated Skill Level"),
                  //put a value here!
                  validator: (value) {
                    if (value == null) {
                      return "Please select your updated skill level !";
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(height: margin),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Updated Prize Pool",
                    border: OutlineInputBorder(),
                    // contentPadding:
                  ),
                  onChanged: (value) {
                    viewmodel.prizePool = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Required";
                    } else {
                      return null;
                    }
                  },
                ),

                SizedBox(height: margin),

                TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  minLines: 5,
                  decoration: InputDecoration(
                    labelText: "Updated Description",
                    border: OutlineInputBorder(),
                    // contentPadding:
                  ),
                  onChanged: (value) {
                    viewmodel.description = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Required";
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
      ),
    );
  }
}