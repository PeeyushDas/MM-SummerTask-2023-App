import 'package:flutter/material.dart';

import '../page/article.dart';

class MMlist extends SearchDelegate {
  final List<Map<String, dynamic>> data;

  MMlist(this.data);

  @override
  String get searchFieldLabel => 'Search Articles';

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
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

    final filteredData = data
        .where((item) => item['title']
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            _showArticleDetail(filteredData[index]['_id']);
          },
          title: Text(filteredData[index]['title']),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
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

    final filteredData = data
        .where((item) => item['title']
            .toString()
            .toLowerCase()
            .contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: filteredData.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            _showArticleDetail(filteredData[index]['_id']);
          },
          title: Text(filteredData[index]['title']),
        );
      },
    );
  }
}
