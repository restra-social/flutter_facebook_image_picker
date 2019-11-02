class AlbumPaging {
  List<Album> data;
  Paging paging;

  AlbumPaging({this.data, this.paging});

  AlbumPaging.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Album>();
      json['data'].forEach((v) {
        data.add(new Album.fromJson(v));
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

class Album {
  String id;
  String name;
  int count;
  CoverPhoto coverPhoto;

  Album({this.id, this.name, this.count, this.coverPhoto});

  Album.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    count = json['count'];
    coverPhoto = count > 0 && json['cover_photo'] != null
        ? new CoverPhoto.fromJson(json['cover_photo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['count'] = this.count;
    if (this.coverPhoto != null) {
      data['cover_photo'] = this.coverPhoto.toJson();
    }
    return data;
  }
}

class CoverPhoto {
  String source;
  String id;

  CoverPhoto({this.source, this.id});

  CoverPhoto.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['id'] = this.id;
    return data;
  }
}

class Paging {
  Cursors cursors;
  String next;

  Paging({this.cursors,this.next});

  Paging.fromJson(Map<String, dynamic> json) {
    cursors =
    json['cursors'] != null ? new Cursors.fromJson(json['cursors']) : null;
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cursors != null) {
      data['cursors'] = this.cursors.toJson();
    }
    return data;
  }
}

class Cursors {
  String before;
  String after;

  Cursors({this.before, this.after});

  Cursors.fromJson(Map<String, dynamic> json) {
    before = json['before'];
    after = json['after'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['before'] = this.before;
    data['after'] = this.after;
    return data;
  }
}