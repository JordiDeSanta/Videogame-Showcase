import 'dart:async';
import 'dart:convert';
import 'package:igdb_client/igdb_client.dart';
import 'package:videogames/src/models/cover_model.dart';

import 'package:videogames/src/models/game_model.dart';

class GamesProvider {
  List<String> fields = [
    'id',
    'cover',
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
        search: 'Crash bandicoot',
        fields: fields,
        //order: 'rating desc',
        limit: 8,
      ),
    );

    final decodedDataG = json.decode(gamesResponse.toJson());
    final games = new Games.fromJsonList(decodedDataG['data']);

    List<int> ids = [];
    games.items.forEach((e) {
      ids.add(e.cover);
    });

    var imgResponse = await client.covers(
      new IGDBRequestParameters(
        ids: ids,
        fields: ['image_id'],
        //order: 'date asc',
      ),
    );

    final decodedDataI = json.decode(imgResponse.toJson());
    final covers = new Covers.fromJsonList(decodedDataI['data']);

    int iterator = 0;
    List<Game> finalGames = [];
    games.items.forEach((e) {
      e.coverLink = covers.items[iterator].imageId;
      finalGames.add(e);
      iterator++;
    });

    return finalGames;
  }

  printResponse(IGDBResponse resp) {
    print(IGDBHelpers.getPrettyStringFromMap(resp.toMap()));
  }
}
