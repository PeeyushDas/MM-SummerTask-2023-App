import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:mm_summertask_2023_app/components/list.dart';

class articl extends StatefulWidget {
  const articl(this.index, {super.key});

  final int index;

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
        title: const Text('ARTICLE PAGE'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            trending[widget.index]['titles'],
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            trending[widget.index]['description'],
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
          const Row(
            children: [
              LikeButton(
                likeCount: 0,
              ),
              SizedBox(
                width: 5,
              ),
            ],
          )
        ]),
      ),
    );
  }
}
