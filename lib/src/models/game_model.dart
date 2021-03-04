import 'package:igdb_client/igdb_client.dart';
import 'dart:convert';

import 'package:videogames/src/providers/games_provider.dart';
import 'package:videogames/src/models/cover_model.dart';

class Games {
  List<Game> items = new List();

  Games();

  Games.fromJsonList({List<dynamic> jsonList, List<dynamic> coverLinkList}) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final game = new Game.fromJsonMap(item);
      items.add(game);
    }

    if (coverLinkList == null) return;

    for (var item in coverLinkList) {
      final game = new Game.fromJsonMap(item);
      items.add(game);
    }
  }
}

class Game {
  String coverLink;
  int id;
  int cover;
  List<int> ageRatings;
  int category;
  int createdAt;
  int firstReleaseDate;
  List<int> genres;
  List<int> involvedCompanies;
  String name;
  List<int> platforms;
  List<int> releaseDates;
  List<int> screenshots;
  List<int> similarGames;
  String slug;
  String summary;
  List<int> tags;
  List<int> themes;
  double totalRating;
  int totalRatingCount;
  String checksum;
  int status;
  List<int> artworks;

  Game({
    this.coverLink,
    this.id,
    this.cover,
    this.ageRatings,
    this.category,
    this.createdAt,
    this.firstReleaseDate,
    this.genres,
    this.involvedCompanies,
    this.name,
    this.platforms,
    this.releaseDates,
    this.screenshots,
    this.similarGames,
    this.slug,
    this.summary,
    this.tags,
    this.themes,
    this.totalRating,
    this.totalRatingCount,
    this.checksum,
    this.status,
    this.artworks,
  });

  Game.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    cover = json['cover'];
    category = json['category'];
    createdAt = json['created_at'];
    firstReleaseDate = json['first_release_date'];
    genres = json['genres']?.cast<int>();
    involvedCompanies = json['involved_companies']?.cast<int>();
    name = json['name'];
    platforms = json['platforms']?.cast<int>();
    releaseDates = json['release_dates']?.cast<int>();
    screenshots = json['screenshots']?.cast<int>();
    similarGames = json['similar_games']?.cast<int>();
    slug = json['slug'];
    summary = json['summary'];
    tags = json['tags']?.cast<int>();
    themes = json['themes']?.cast<int>();
    totalRating = json['total'];
    totalRatingCount = json['total_rating_count'];
    checksum = json['checksum'];
    status = json['status'];
    ageRatings = json['age_ratings']?.cast<int>();
    artworks = json['artworks']?.cast<int>();
    coverLink = json['image_id'];
  }

  getImageLink() {
    if (coverLink == null) {
      return 'https://748073e22e8db794416a-cc51ef6b37841580002827d4d94d19b6.ssl.cf3.rackcdn.com/not-found.png';
    } else {
      return 'https://images.igdb.com/igdb/image/upload/t_cover_big/$coverLink.jpg';
    }
  }
}
