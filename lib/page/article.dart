import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/components/btbar.dart';
import 'package:mm_summertask_2023_app/list.dart';

class articl extends StatelessWidget {
  articl(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: const [
            Text('ARTICLE PAGE'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            trending[index]['titles'],
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            trending[index]['description'],
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const Artbt(),
    );
  }
}
