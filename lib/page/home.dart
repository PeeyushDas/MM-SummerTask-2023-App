import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/components/btbar.dart';
import 'package:http/http.dart' as http;
import 'package:mm_summertask_2023_app/page/article.dart';

import '../components/list.dart';

class MM extends StatefulWidget {
  const MM({super.key});

  @override
  State<MM> createState() => _MMState();
}

class _MMState extends State<MM> {
  MongoDBService mongoDBService = MongoDBService();
  List<Map<String, dynamic>> _data = [];
  List<Map<String, dynamic>> _data1 = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromMongoDB();
    fetchDataFromMongoDB1();
  }

  Future<void> fetchDataFromMongoDB() async {
    try {
      final data = await MongoDBService.fetchDataFromMongoDB();
      setState(() {
        _data = data;
      });
      for (int i = 0; i < _data.length; i++) {
        bool a = true;
        if (_data[i]['viewcount'] > 5) {
          fetchDataFromMongoDB1();
          for (int j = 0; j < _data1.length; j++) {
            if (_data[i]['_id'] == _data1[j]['token']) {
              a = false;
            }
          }
          if (a == true) {
            final trend = {
              'title': _data[i]['title'],
              'description': _data[i]['description'],
              'viewcount': _data[i]['viewcount'],
              'token': _data[i]['_id'],
            };
            postdata(trend);
          }
        }
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  Future<void> fetchDataFromMongoDB1() async {
    try {
      final data1 = await MongoDBService.fetchDataFromMongoDB1();
      setState(() {
        _data1 = data1;
      });
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  int x = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('lib/assests/mm.png'),
            ),
            SizedBox(width: 20),
            Text('MONDAY MORNING'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () async {
              final selectedArticle = await showSearch(
                context: context,
                delegate: MMlist(_data),
              );
              if (selectedArticle != null) {}
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              '🔥 Trending',
              style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
                itemCount: _data1.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      fetchDataFromMongoDB1();
                      x = _data[index]['viewcount'] + 1;
                      final view = {
                        'viewcount': x,
                      };
                      putData(view, _data1[index]['token']);
                      _showArticleDetail(
                        _data1[index]['token'],
                      );
                    },
                    title: Text(_data1[index]['title']),
                    subtitle: Text(_data1[index]['description']),
                  );
                }),
          ),
          const Divider(
            height: 25,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'Articles',
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
                      fetchDataFromMongoDB();
                      x = _data[index]['viewcount'] + 1;
                      final view = {
                        'viewcount': x,
                      };
                      putData(view, _data[index]['_id']);
                      _showArticleDetail(
                        _data[index]['_id'],
                      );
                    },
                    title: Text(_data[index]['title']),
                    subtitle: Text(_data[index]['description']),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: const Hombt(),
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

  Future<void> putData(Map<String, dynamic> data, String id) async {
    try {
      await mongoDBService.putDataToMongoDB(data, id);
    } catch (e) {
      print('Error posting data: $e');
    }
  }

  Future<void> postdata(Map<String, dynamic> data) async {
    try {
      await mongoDBService.postDataToMongoDB(data);
    } catch (e) {
      print('Error posting data: $e');
    }
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

  static Future<List<Map<String, dynamic>>> fetchDataFromMongoDB1() async {
    final response = await http
        .get(Uri.parse('http://192.168.128.151:2000/api/article/trending/all'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.cast<Map<String, dynamic>>();
    } else {
      throw Exception('Failed to fetch data.');
    }
  }

  Future<void> putDataToMongoDB(Map<String, dynamic> data, String id) async {
    final response = await http.put(
      Uri.parse('http://192.168.128.151:2000/api/article/$id'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    if (response.statusCode == 200) {
      print('Data saved successfully');
    } else {
      print('Failed to save data.');
    }
  }

  Future<void> postDataToMongoDB(Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('http://192.168.128.151:2000/api/article/trending'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    if (response.statusCode == 200) {
      print('Data saved successfully');
    } else {
      print('Failed to save data.');
    }
  }
}
