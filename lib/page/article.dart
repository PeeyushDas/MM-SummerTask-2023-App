import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/home.dart';
import 'package:mm_summertask_2023_app/page/search.dart';

class articl extends StatefulWidget {
  const articl({Key? key}) : super(key: key);

  @override
  State<articl> createState() => _articlState();
}

class _articlState extends State<articl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            CircleAvatar(),
            SizedBox(width: 20),
            Text('MONDAY MORNING'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
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
                backgroundColor: Colors.white,
              ),
              child: const Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const articl(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Icon(
                Icons.article_sharp,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const search(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const admin(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Icon(
                Icons.account_circle_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
