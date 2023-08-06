import 'package:flutter/material.dart';

import 'package:mm_summertask_2023_app/page/createart.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mm_summertask_2023_app/page/updateart.dart';

import 'article.dart';

class admin2 extends StatefulWidget {
  @override
  State<admin2> createState() => _admin2State();
}

class _admin2State extends State<admin2> {
  MongoDBService mongoDBService = MongoDBService();
  List<Map<String, dynamic>> _data = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromMongoDB();
  }

  Future<void> fetchDataFromMongoDB() async {
    try {
      final data = await MongoDBService.fetchDataFromMongoDB();
      setState(() {
        _data = data;
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  Future<void> deleteItemFromMongoDB(String itemId) async {
    try {
      final response = await http
          .delete(Uri.parse('http://192.168.128.151:2000/api/article/$itemId'));
      if (response.statusCode == 200) {
        setState(() {
          _data.removeWhere((item) => item['_id'] == itemId);
        });
        print('Item deleted successfully.');
      } else {
        print('Failed to delete item from MongoDB.');
      }
    } catch (e) {
      print('Error deleting item: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('ADMIN'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'ARTICLES',
              style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
                itemCount: _data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      onTap: () {
                        _showArticleDetail(
                          _data[index]['_id'],
                        );
                      },
                      title: Text(_data[index]['title']),
                      subtitle: Text(_data[index]['description']),
                      trailing: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(
                              onPressed: () {
                                updateArticle(
                                    _data[index]['title'],
                                    _data[index]['description'],
                                    _data[index]['_id']);
                              },
                              child: const Text(
                                "Update",
                                style: TextStyle(color: Colors.green),
                              )),
                          TextButton(
                              onPressed: () {
                                String itemId = _data[index]['_id'];
                                deleteItemFromMongoDB(itemId);
                                setState(() {});
                              },
                              child: const Text(
                                "Delete",
                                style: TextStyle(color: Colors.red),
                              )),
                        ],
                      ));
                }),
          ),
          Divider(),
          SizedBox(
            height: 50,
            width: 360,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          creatart(),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text('Add a new article')),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  void _showArticleDetail(String id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => articl(
          id: id,
        ),
      ),
    );
  }

  void updateArticle(String title, String descp, String _id) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => updateart(
          title: title,
          descp: descp,
          id: _id,
        ),
      ),
    );
  }
}

class MongoDBService {
  static Future<List<Map<String, dynamic>>> fetchDataFromMongoDB() async {
    final response = await http
        .get(Uri.parse('http://192.168.128.151:2000/api/article/all'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to fetch data.');
    }
  }
}
