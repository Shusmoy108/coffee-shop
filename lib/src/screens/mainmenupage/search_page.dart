import 'package:flutter/material.dart';
import '../../resources/dummydata.dart';

class SearchPage extends SearchDelegate<String> {
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Text(query),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggList = query.isEmpty
        ? recentsearchdata
        : searchdata.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggList.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(
            Icons.navigate_next,
          ),
          title: RichText(
            text: TextSpan(
              text: suggList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: suggList[index].substring(query.length),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {
            query = suggList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
