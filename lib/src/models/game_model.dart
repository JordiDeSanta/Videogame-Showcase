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
    this.id,
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
    category = json['category'];
    createdAt = json['created_at'];
    firstReleaseDate = json['first_release_date'];
    genres = json['genres'].cast<int>();
    involvedCompanies = json['involved_companies'].cast<int>();
    name = json['name'];
    platforms = json['platforms'].cast<int>();
    releaseDates = json['release_dates'].cast<int>();
    screenshots = json['screenshots'].cast<int>();
    similarGames = json['similar_games'].cast<int>();
    slug = json['slug'];
    summary = json['summary'];
    tags = json['tags'].cast<int>();
    themes = json['themes'].cast<int>();
    totalRating = json['total'];
    totalRatingCount = json['total_rating_count'];
    checksum = json['checksum'];
    status = json['status'];
    ageRatings = json['age_ratings'].cast<int>();
    artworks = json['artworks'].cast<int>();
  }
}
