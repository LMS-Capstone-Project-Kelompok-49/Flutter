class Enrollment {
  String? userid;
  String? courseid;

  Enrollment({
    this.userid,
    this.courseid,
  });

  Enrollment.fromJson(Map<String, dynamic> json){
    userid = json['user id'] as String;
    courseid = json['course id'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user id'] = this.userid;
    data['course id'] = this.courseid;
    return data;
  }
}
