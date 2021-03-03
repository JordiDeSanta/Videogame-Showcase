import 'package:flutter/material.dart';


import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:videogames/src/models/game_model.dart';

class CardSwiperWidget extends StatelessWidget {
  final List<dynamic> games;

  const CardSwiperWidget({Key key, @required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: Swiper(
        autoplay: true,
        itemCount: games.length,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        layout: SwiperLayout.STACK,
        itemBuilder: (context, index) {
          Game _gameTemp = games[index];
          return _card(context, _gameTemp);
        },
      ),
    );
  }

  Widget _card(BuildContext context, Game tempGame) {
    return Text(tempGame.name);
  }
}
