import 'package:flutter/material.dart';

List<String> trending = [
  "Article 1",
  "Article 2",
  "Article 3",
  "Article 4",
  "Article 5",
  "Article 6",
  "Article 7",
];
List<String> articles = [
  "Article 1",
  "Article 2",
  "Article 3",
  "Article 4",
  "Article 5",
  "Article 6",
  "Article 7",
  "Article 8",
  "Article 9",
  "Article 10",
  "Article 11",
  "Article 12",
  "Article 13",
  "Article 14",
  "Article 15",
  "Article 16",
];

class MMlist extends SearchDelegate {
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
          final suggs = trending[index];

          return ListTile(
            title: Text(suggs),
            onTap: () {
              query = suggs;
            },
          );
        });
  }

  @override
  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }
}
