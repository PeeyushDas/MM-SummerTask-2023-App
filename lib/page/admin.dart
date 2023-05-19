import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/components/btbar.dart';
import 'package:mm_summertask_2023_app/components/txtfield.dart';
import 'package:mm_summertask_2023_app/page/home.dart';

import 'article.dart';

class admin extends StatefulWidget {
  const admin({Key? key}) : super(key: key);

  @override
  State<admin> createState() => _adminState();
}

class _adminState extends State<admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assests/mm.png'),
            ),
            SizedBox(width: 20),
            Text('MONDAY MORNING'),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              const SizedBox(height: 85),
              const Icon(
                Icons.person,
                size: 80,
              ),
              const Text(
                'Admin login',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 25,
              ),
              Txtf(),
              const SizedBox(
                height: 15,
              ),
              Txtf2(),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const MM(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text('Login')),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Adbt(),
    );
  }
}
