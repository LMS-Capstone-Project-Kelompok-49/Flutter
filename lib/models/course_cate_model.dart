class CourseCategory {
  int? id;
  String? category;
  DateTime? created;
  DateTime? updated;

  CourseCategory({
    this.id,
    this.category,
    this.created,
    this.updated,
  });

  CourseCategory.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    category = json['category'] as String;
    created = json['created'] as DateTime;
    updated = json['updated'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
