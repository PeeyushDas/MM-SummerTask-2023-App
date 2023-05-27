import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/components/list.dart';
import 'package:mm_summertask_2023_app/components/btbar.dart';

class MM extends StatefulWidget {
  const MM({Key? key}) : super(key: key);

  @override
  State<MM> createState() => _MMState();
}

class _MMState extends State<MM> {
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
            onPressed: () {
              showSearch(
                context: context,
                delegate: MMlist(),
              );
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
                itemCount: trending.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              articl(index),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    title: Text(trending[index]['titles']),
                    subtitle: Text(trending[index]['description']),
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
                itemCount: articles.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              articl(index),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    title: Text(articles[index]['titles']),
                    subtitle: Text(articles[index]['description']),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: const Hombt(),
    );
  }
}
