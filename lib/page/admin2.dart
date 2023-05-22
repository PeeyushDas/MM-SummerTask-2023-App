import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/article.dart';
import 'package:mm_summertask_2023_app/list.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation1, animation2) =>
                                        admin2(),
                                transitionDuration: Duration.zero,
                                reverseTransitionDuration: Duration.zero,
                              ),
                            );
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
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  admin2(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ),
                          );
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
