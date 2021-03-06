// Generated by https://quicktype.io
class Artworks {
  List<Artwork> items = new List();

  Artworks();

  Artworks.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final artwork = new Artwork.fromJsonMap(item);
      items.add(artwork);
    }
  }
}

class Artwork {
  int id;
  int game;
  int height;
  String imageId;
  String url;
  int width;
  String checksum;

  Artwork({
    this.id,
    this.game,
    this.height,
    this.imageId,
    this.url,
    this.width,
    this.checksum,
  });

  Artwork.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    game = json['game'];
    height = json['height'];
    imageId = json['image_id'];
    url = json['url'];
    width = json['width'];
    checksum = json['checksum'];
  }
}
