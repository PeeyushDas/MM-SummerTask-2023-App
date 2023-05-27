import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/components/list.dart';
import 'package:mm_summertask_2023_app/page/createart.dart';

class admin2 extends StatefulWidget {
  const admin2({super.key});

  @override
  State<admin2> createState() => _admin2State();
}

class _admin2State extends State<admin2> {
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
            height: 25,
          ),
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
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'ALL ARTICLES',
              style: (TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
                itemCount: grandlist.length,
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
                      title: Text(grandlist[index]['titles']),
                      subtitle: Text(grandlist[index]['description']),
                      trailing: TextButton(
                          onPressed: () {
                            articles.add(grandlist[index]);
                            setState(() {});
                          },
                          child: const Text("Add")));
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
                    trailing: TextButton(
                        onPressed: () {
                          articles.removeAt(index);
                          setState(() {});
                        },
                        child: const Text(
                          "Remove",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
