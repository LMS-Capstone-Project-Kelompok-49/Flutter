class Rating {
  int? id;
  int? userid;
  int? courseid;
  String? review;
  bool? rating;
  DateTime? created;
  DateTime? updated;

  Rating({
    this.id,
    this.userid,
    this.courseid,
    this.review,
    this.rating,
    this.created,
    this.updated,
  });

  Rating.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    userid = json['user id'] as int;
    courseid = json['course id'] as int;
    review = json['review'] as String;
    rating = json['rating'] as bool;
    created = json['created'] as DateTime;
    updated = json['updated'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user id'] = this.userid;
    data['course id'] = this.courseid;
    data['review'] = this.review;
    data['rating'] = this.rating;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
