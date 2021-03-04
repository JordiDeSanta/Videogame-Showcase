import 'package:flutter/material.dart';

import 'package:videogames/src/providers/games_provider.dart';
import 'package:videogames/src/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  final gamesProvider = new GamesProvider();

  @override
  Widget build(BuildContext context) {
    gamesProvider.getGames();

    return Scaffold(
        appBar: AppBar(
          title: Text('Cine Movies'),
          backgroundColor: Colors.deepOrange,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _swiperCreator(),
            ],
          ),
        ));
  }

  Widget _swiperCreator() {
    return FutureBuilder(
      future: gamesProvider.getGames(),
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        if (snapshot.hasData) {
        
          return CardSwiperWidget(games: snapshot.data);
        } else {
          return Container(
            height: 400.0,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
