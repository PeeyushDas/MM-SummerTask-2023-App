import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class articl extends StatefulWidget {
  final String id;

  const articl({required this.id});

  @override
  State<articl> createState() => _articlState();
}

class _articlState extends State<articl> {
  Map<String, dynamic> _data = {};

  @override
  void initState() {
    super.initState();
    _fetchDataFromMongoDB(widget.id);
  }

  Future<void> _fetchDataFromMongoDB(String itemId) async {
    try {
      final data = await MongoDBService.fetchDataFromMongoDB(itemId);
      setState(() {
        _data = data;
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

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
            _data['title'],
            style: const TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            _data['description'],
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
              LikeButton(
                likeCount: _data['like'],
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          )
        ]),
      ),
    );
  }
}

class MongoDBService {
  static Future<Map<String, dynamic>> fetchDataFromMongoDB(
      String Itemid) async {
    final response = await http
        .get(Uri.parse('http://192.168.128.151:2000/api/article/$Itemid'));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch data.');
    }
  }
}
