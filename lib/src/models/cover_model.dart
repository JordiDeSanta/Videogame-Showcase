class Covers {
  List<Cover> items = new List();

  Covers();

  Covers.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final cover = new Cover.fromJsonMap(item);
      items.add(cover);
    }
  }
}

class Cover {
  int id;
  String imageId;

  Cover({
    this.id,
    this.imageId,
  });

  Cover.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    imageId = json['image_id'];
  }
}
