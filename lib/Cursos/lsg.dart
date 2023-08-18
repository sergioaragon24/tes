// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_tes/Cursos/Probarvideo.dart';
//import 'package:flutter_tes/Cursos/chewie_list_item.dart';
import 'package:flutter_tes/Cursos/curso.dart';
//import 'package:flutter_tes/Cursos/videosdeletreo.dart';
// ignore: unused_import
import 'package:chewie/chewie.dart';
//import 'package:video_player/video_player.dart';

class Lsg extends StatelessWidget {
  const Lsg({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_init_to_null
    return Scaffold(
      drawer: const NavBar(),
      //drawer: const shopDrawer(),
      appBar: AppBar(
        title: const Text("LSG"),
      ),
      /*body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videosmp4/fuego.mp4',
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.networkUrl(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4'
                  as Uri,
            ),
            looping: true,
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.network(
              'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/error.mp4',
            ),
            looping: false,
          ),
        ],
      ),*/
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  get accountEmail => null;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text('Sergio Pablo'),
              accountEmail: accountEmail),
          ListTile(
            leading: const Icon(Icons.waving_hand),
            title: const Text('LSG'),
            onTap: () {
              Navigator.push(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => Lsg()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.numbers),
            title: const Text('Matematica'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Cursos'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const cursoI()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.work),
            title: const Text('work'),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const shopDrawer()));
            },
          ),
        ],
      ),
    );
  }
}
