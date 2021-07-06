class Video {

  String id;
  String title;
  String description;
  String image;
  String chanel;

  Video({this.id, this.title, this.description, this.image, this.chanel});

  static List<Video> parseListJson(Map<String, dynamic> data, key) {
    return data[key].map<Video>((item) => Video.fromJson(item)).toList();
  }

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      id: json["id"]["videoId"],
      title: json["snippet"]["title"],
      description: json["snippet"]["description"],
      image: json["snippet"]["thumbnails"]["high"]["url"],
      chanel: json["snippet"]["channelTitle"],
    );
  }
}