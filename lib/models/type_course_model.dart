class TypeCourse {
  int? courseid;
  String? type;

  TypeCourse({
    this.courseid,
    this.type,
  });

  TypeCourse.fromJson(Map<String, dynamic> json){
    courseid = json['course id'] as int;
    type = json['type'] as String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course id'] = this.courseid;
    data['type'] = this.type;
    return data;
  }
}
