import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage._();

  static Route<String> route() {
    return MaterialPageRoute(builder: (_) => const SearchPage._());
  }

  @override
  State<StatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  String get _text => _controller.text;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('City Search'),),
      body: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'City',
                    hintText: 'Chicago',
                  ),
                ),
              )
          ),
          IconButton(
            key: const Key('searchPage_search_iconButton'),
            onPressed: () => Navigator.of(context).pop(_text),
            icon: const Icon(Icons.search, semanticLabel: 'Submit',),
          ),
        ],
      ),
    );
  }
}