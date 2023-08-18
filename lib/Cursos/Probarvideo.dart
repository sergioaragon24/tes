// ignore: file_names
// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';
// ignore: unused_import
//import 'package:sliver_tools/sliver_tools.dart';

// ignore: camel_case_types
class shopDrawer extends StatelessWidget {
  const shopDrawer({super.key});

  static const List<Tuple2> tutorials = [
    const Tuple2<String, String>(
        'https://static.vecteezy.com/system/resources/previews/000/184/418/original/letter-a-typography-vector.png',
        'A a'),
    const Tuple2<String, String>(
        'https://img.freepik.com/vector-gratis/vector-alfabeto-mayuscula-floral-b_53876-86257.jpg?w=2000',
        'B b'),
    const Tuple2<String, String>(
        'https://play-lh.googleusercontent.com/WCwcq3DvY0pbaTqUfU1ToySB2s5mmqAUxcLcTN3Y2J5l-sDwS2L2z6_qmCYNX9wdXg',
        'C c'),
    const Tuple2<String, String>(
        'https://e1.pxfuel.com/desktop-wallpaper/44/447/desktop-wallpaper-letter-d.jpg',
        'D d'),
    const Tuple2<String, String>(
        'https://c8.alamy.com/compes/t3a9xh/letra-e-de-piedras-preciosas-de-colores-3d-rendering-aislado-sobre-fondo-blanco-t3a9xh.jpg',
        'E e'),
    const Tuple2<String, String>(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/NYCS-bull-trans-F.svg/2048px-NYCS-bull-trans-F.svg.png',
        'F f'),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    return const Scaffold(
      /*appBar: AppBar(
        title: const Text('HOla'),
      ),*/
      //body: _buildContent()
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            iconTheme: IconThemeData(color: Colors.black54),
            backgroundColor: Color.fromARGB(255, 11, 79, 108),
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Lengua de señas',
                style: TextStyle(color: Colors.black54),
              ),
              background: Image(
                image: NetworkImage(
                    'https://cdn2.vectorstock.com/i/1000x1000/04/81/guatemala-flag-and-hand-on-white-background-vector-23780481.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return _buildListItem(tutorials[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Card _buildListItem(Tuple2 tutorial) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image(
            image: NetworkImage(tutorial.item1, scale: 12),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, bottom: 10, top: 0),
              child: Text(
                tutorial.item2,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
