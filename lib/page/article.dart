import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/list.dart';

class articl extends StatelessWidget {
  const articl(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ARTICLE PAGE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          const SizedBox(
            height: 15,
          ),
          const Divider(
            height: 25,
            color: Colors.grey,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Icon(
                  Icons.thumb_up,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Icon(
                  Icons.thumb_down,
                  color: Colors.black,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
