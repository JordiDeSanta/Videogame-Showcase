import 'dart:async';

import 'package:igdb_client/igdb_client.dart';

import 'package:videogames/src/models/game_model.dart';

class GamesProvider {
  Future<List<Game>> getGames() async {
    var token = await IGDBClient.getOauthToken(
        'd3vjcma7d8t76qzaebvm0jaxo0wgy3', 'wygtzdzqshpkwvpwjm5khea7awdx2j');

    var client = new IGDBClient(
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36',
        'd3vjcma7d8t76qzaebvm0jaxo0wgy3',
        token.accessToken,
        logger: IGDBConsoleLogger());

    // Find games with 'infamous' in their name and return
    // the results' name and expand their release_dates and platforms.
    var gamesResponse = await client.games(new IGDBRequestParameters(
        search: 'infamous',
        fields: ['name', 'release_dates.*', 'platforms.*']));
    print(gamesResponse);
  }
}
