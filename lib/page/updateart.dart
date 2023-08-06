import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class updateart extends StatefulWidget {
  final String title;
  final String descp;
  final String id;

  const updateart({required this.title, required this.descp, required this.id});

  @override
  State<updateart> createState() => _creatartState();
}

class _creatartState extends State<updateart> {
  MongoDBService mongoDBService = MongoDBService();
  late TextEditingController titl;
  late TextEditingController desc;

  @override
  void initState() {
    super.initState();

    titl = TextEditingController(text: widget.title);
    desc = TextEditingController(text: widget.descp);
  }

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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: TextField(
                controller: titl,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(179, 216, 213, 213),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: SizedBox(
                width: 360,
                height: 550,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  controller: desc,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(179, 216, 213, 213),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Enter Article',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: 360,
              child: ElevatedButton(
                  onPressed: () {
                    final data = {
                      'title': titl.text,
                      'description': desc.text,
                    };
                    putData(data, widget.id);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text('Update Article')),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
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
}

class MongoDBService {
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
}
