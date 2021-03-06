// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       home: RandomWords(),
//       theme: ThemeData(primaryColor: Colors.deepOrange),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   _RandomWordsState createState() => _RandomWordsState();
// }

// class _RandomWordsState extends State<RandomWords> {
//   final _suggestion = <WordPair>[];
//   final _saved = Set<WordPair>();
//   final _biggerFont = TextStyle(fontSize: 18.0);
//   @override
//   Widget build(BuildContext context) {
//     final wordPair = WordPair.random();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Startup Name Generator"),
//         actions: [IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: EdgeInsets.all(16),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestion.length) {
//           _suggestion.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestion[index]);
//       },
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(pair.asPascalCase, style: _biggerFont),
//       trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border),
//       onTap: () {
//         if (alreadySaved) {
//           _saved.remove(pair);
//         } else {
//           _saved.add(pair);
//         }
//       },
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context)
//         .push(MaterialPageRoute<void>(builder: (BuildContext context) {
//       final tiles = _saved.map((WordPair pair) {
//         return ListTile(
//           title: Text(
//             pair.asPascalCase,
//             style: _biggerFont,
//           ),
//         );
//       });
//       final divided =
//           ListTile.divideTiles(tiles: tiles, context: context).toList();
//       return Scaffold(
//         appBar: AppBar(
//           title: Text("Saved Suggestions"),
//         ),
//         body: ListView(
//           children: divided,
//         ),
//       );
//     }));
//   }
// }
