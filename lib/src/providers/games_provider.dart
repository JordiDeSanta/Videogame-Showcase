import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:videogames/src/models/game_model.dart';

class GamesProvider {
  String _clientID = 'd3vjcma7d8t76qzaebvm0jaxo0wgy3';
  String _authorization = 'Bearer uvcnmz9j4n0jphaz0opfn5dfyw45hk';
  String _url = 'https://api.igdb.com/v4';

  Future<List<Game>> getGames() async {
    final url = Uri.https(_url, '/games', {
      'Client-ID' : _clientID,
      'Authorization' : _authorization
    });

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final games = new Games.fromJsonList(decodedData);

    return games.items;
  }
}
