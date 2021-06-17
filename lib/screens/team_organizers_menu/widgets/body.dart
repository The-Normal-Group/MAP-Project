import '../../create_team/create_team_screen.dart';
import 'package:flutter/material.dart';
import '../team_organizer_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(50.0),

        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // text

            SizedBox(height: 30),

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new CreateTeamScreen()));
                },
                child: Text(
                  "Create a Team",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 60),

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "View My Teams",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 60),

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Find Tournament",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 60),

            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Find Team",
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: 30.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
