import 'package:flutter/material.dart';
import 'package:mm_summertask_2023_app/page/article.dart';

List<Map<String, dynamic>> trending = [
  {"titles": "Article 1", "description": " a"},
  {"titles": "Article 2", "description": " ab"},
  {"titles": "Article 3", "description": " abc"},
  {"titles": "Article 4", "description": " abcd"},
  {"titles": "Article 5", "description": " abcde"},
  {"titles": "Article 6", "description": " abcdef"},
  {"titles": "Article 7", "description": " abcdefg"},
  {"titles": "Article 8", "description": " abcdefgh"},
  {"titles": "Article 9", "description": " abcdefghi"},
];
List<Map<String, dynamic>> articles = [
  {"titles": "Article 1", "description": " a"},
  {"titles": "Article 2", "description": " ab"},
  {"titles": "Article 3", "description": " abc"},
  {"titles": "Article 4", "description": " abcd"},
  {"titles": "Article 5", "description": " abcde"},
];

List<Map<String, dynamic>> grandlist = [
  {"titles": "Article 1", "description": " a"},
  {"titles": "Article 2", "description": " ab"},
  {"titles": "Article 3", "description": " abc"},
  {"titles": "Article 4", "description": " abcd"},
  {"titles": "Article 5", "description": " abcde"},
  {"titles": "Article 6", "description": " abcdef"},
  {"titles": "Article 7", "description": " abcdefg"},
  {"titles": "Article 8", "description": " abcdefgh"},
  {"titles": "Article 9", "description": " abcdefghi"},
];

class MMlist extends SearchDelegate {
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      )
    ];
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    trending;

    return ListView.builder(
        itemCount: trending.length,
        itemBuilder: (context, index) {
          final suggs = (trending[index]['titles']);

          return ListTile(
            title: Text(suggs),
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
              showResults(context);
            },
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) => Text(
        query,
      );
}
