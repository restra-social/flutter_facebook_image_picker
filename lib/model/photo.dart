import 'album.dart';

class PhotoPaging {
  List<Photo> data;
  Paging paging;

  PhotoPaging({this.data, this.paging});

  PhotoPaging.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Photo>();
      json['data'].forEach((v) {
        data.add(new Photo.fromJson(v));
      });
    }
    paging =
    json['paging'] != null ? new Paging.fromJson(json['paging']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.paging != null) {
      data['paging'] = this.paging.toJson();
    }
    return data;
  }
}

class Photo {
  String id;
  String name;
  int width;
  int height;
  String picture;
  String source;

  Photo(
      {this.id, this.name, this.width, this.height, this.picture, this.source});

  Photo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    width = json['width'];
    height = json['height'];
    picture = json['picture'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['width'] = this.width;
    data['height'] = this.height;
    data['picture'] = this.picture;
    data['source'] = this.source;
    return data;
  }
}