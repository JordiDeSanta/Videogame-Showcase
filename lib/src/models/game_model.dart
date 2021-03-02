class Games {
    List<Game> items = new List();

  Games();

  Games.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final game = new Game.fromJsonMap(item);
      items.add(game);
    }
  }
}

class Game {
  int id;
  List<int> ageRatings;
  List<int> alternativeNames;
  int category;
  int collection;
  int cover;
  int createdAt;
  List<int> externalGames;
  int firstReleaseDate;
  int follows;
  int franchise;
  List<int> franchises;
  List<int> gameModes;
  List<int> genres;
  List<int> involvedCompanies;
  List<int> keywords;
  String name;
  List<int> platforms;
  List<int> playerPerspectives;
  double rating;
  int ratingCount;
  List<int> releaseDates;
  List<int> similarGames;
  String slug;
  String summary;
  List<int> tags;
  List<int> themes;
  double totalRating;
  int totalRatingCount;
  int updatedAt;
  String url;
  List<int> websites;
  String checksum;

  Game({
    this.id,
    this.ageRatings,
    this.alternativeNames,
    this.category,
    this.collection,
    this.cover,
    this.createdAt,
    this.externalGames,
    this.firstReleaseDate,
    this.follows,
    this.franchise,
    this.franchises,
    this.gameModes,
    this.genres,
    this.involvedCompanies,
    this.keywords,
    this.name,
    this.platforms,
    this.playerPerspectives,
    this.rating,
    this.ratingCount,
    this.releaseDates,
    this.similarGames,
    this.slug,
    this.summary,
    this.tags,
    this.themes,
    this.totalRating,
    this.totalRatingCount,
    this.updatedAt,
    this.url,
    this.websites,
    this.checksum,
  });

   Game.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    ageRatings= json['age_ratings'];
    alternativeNames= json['alternative_names'];
    category= json['category'];
    collection= json['collection'];
    cover= json['icoverd'];
    createdAt= json['createdAt'];
    externalGames= json['externalGames'];
    firstReleaseDate= json['first_release_date'];
    follows= json['follows'];
    franchise= json['franchise'];
    franchises= json['franchises'];
    gameModes= json['game_modes'];
    genres= json['genres'];
    involvedCompanies= json['involved_companies'];
    keywords= json['keywords'];
    name= json['name'];
    platforms= json['platforms'];
    playerPerspectives= json['player_perspectives'];
    rating= json['rating'];
    ratingCount= json['rating_count'];
    releaseDates= json['release_dates'];
    similarGames= json['similar_games'];
    slug= json['slug'];
    summary= json['summary'];
    tags= json['tags'];
    themes= json['themes'];
    totalRating= json['total_rating'];
    totalRatingCount= json['total_rating_count'];
    updatedAt= json['updated_at'];
    url= json['url'];
    websites= json['websites'];
    checksum= json['checksum'];
  }
}
