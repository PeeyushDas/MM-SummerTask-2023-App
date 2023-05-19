import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/components/btbar.dart';
import 'package:mm_summertask_2023_app/list.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
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
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Search Articles',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MMlist(),
                );
              },
              icon: const Icon(
                Icons.search,
                size: 50,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const Searbt(),
    );
  }
}
