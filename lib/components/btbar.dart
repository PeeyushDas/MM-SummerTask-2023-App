import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/search.dart';
import 'package:mm_summertask_2023_app/page/home.dart';

class Hombt extends StatelessWidget {
  const Hombt({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const MM(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: const Icon(
              Icons.home,
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
                  pageBuilder: (context, animation1, animation2) => admin(),
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
    );
  }
}

class Artbt extends StatelessWidget {
  const Artbt({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const MM(),
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
                  pageBuilder: (context, animation1, animation2) => admin(),
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
    );
  }
}

class Adbt extends StatefulWidget {
  const Adbt({super.key});

  @override
  State<Adbt> createState() => _AdbtState();
}

class _AdbtState extends State<Adbt> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const MM(),
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
                  pageBuilder: (context, animation1, animation2) => admin(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: const Icon(
              Icons.account_circle_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Searbt extends StatefulWidget {
  const Searbt({super.key});

  @override
  State<Searbt> createState() => _SearbtState();
}

class _SearbtState extends State<Searbt> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => const MM(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Background color
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
                      const search(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
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
    );
  }
}
