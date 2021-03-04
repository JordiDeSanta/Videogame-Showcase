
class Cover {
  Cover.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var items in jsonList) {
      final game = new Cover.fromJsonMap(items);
      items.add(game);
    }
  }

  int id;
  bool alphaChannel;
  bool animated;
  int game;
  int height;
  String imageId;
  String url;
  int width;
  String checksum;

  Cover({
    this.id,
    this.alphaChannel,
    this.animated,
    this.game,
    this.height,
    this.imageId,
    this.url,
    this.width,
    this.checksum,
  });

  Cover.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    alphaChannel = json['alpha_channel'];
    animated = json['animated'];
    game = json['game'];
    height = json['height'];
    imageId = json['image_id'];
    url = json['url'];
    width = json['width'];
    checksum = json['checksum'];
  }
}
