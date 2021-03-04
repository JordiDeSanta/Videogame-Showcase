import 'dart:async';
import 'dart:convert';
import 'package:igdb_client/igdb_client.dart';

import 'package:videogames/src/models/game_model.dart';

class GamesProvider {
  List<String> fields = [
    'id',
    'age_ratings',
    'category',
    'created_at',
    'first_release_date',
    'genres',
    'involved_companies',
    'name',
    'platforms',
    'release_dates',
    'screenshots',
    'similar_games',
    'slug',
    'summary',
    'tags',
    'themes',
    'total_rating',
    'total_rating_count',
    'checksum',
    'status',
    'artworks',
  ];

  Future<List<Game>> getGames() async {
    var token = await IGDBClient.getOauthToken(
        'd3vjcma7d8t76qzaebvm0jaxo0wgy3', 'wygtzdzqshpkwvpwjm5khea7awdx2j');

    var client = new IGDBClient(
        'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.192 Safari/537.36',
        'd3vjcma7d8t76qzaebvm0jaxo0wgy3',
        token.accessToken,
        logger: IGDBConsoleLogger());

    var gamesResponse = await client.games(
      new IGDBRequestParameters(
        search: 'sonic',
        fields: fields,
        limit: 10,
      ),
    );

    final decodedData = json.decode(gamesResponse.toJson());

    final games = new Games.fromJsonList(decodedData['data']);

    print(games.items);

    return games.items;
  }

  printResponse(IGDBResponse resp) {
    print(IGDBHelpers.getPrettyStringFromMap(resp.toMap()));
  }
}
