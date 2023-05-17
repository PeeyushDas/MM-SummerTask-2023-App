import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/admin.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/list.dart';
import 'package:mm_summertask_2023_app/page/search.dart';

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
        title: Row(
          children: const [
            CircleAvatar(),
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
          const SizedBox(height: 15),
          const Text(
            '🔥 Trending',
            style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
                itemCount: trending.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const articl(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    title: Text(trending[index]),
                  );
                }),
          ),
          const SizedBox(height: 15),
          const Divider(
            height: 25,
            color: Colors.grey,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
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
                    title: Text(articles[index]),
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const MM(),
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
                        const articl(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: const Icon(
                Icons.article_sharp,
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
                    pageBuilder: (context, animation1, animation2) =>
                        const admin(),
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
      ),
    );
  }
}
