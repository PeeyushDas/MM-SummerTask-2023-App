import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/admin2.dart';

class Auth extends StatelessWidget {
  var usr;
  var pass;
  Auth(this.usr, this.pass);

  @override
  Widget build(BuildContext context) {
    if (usr == 'admin' && pass == 'admin123') {
      return admin2();
    } else {
      return Scaffold(
        body: AlertDialog(
          title: const Text("Invalid Username or Password"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => admin(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                child: const Text("OK"))
          ],
        ),
      );
    }
  }
}
