class Course{
  int? id;
  int? typecourse;
  int? category;
  String? coursename;
  String? description;
  int? price;
  DateTime? createdat;
  DateTime? updatedat;

  Course({
    this.id,
    this.typecourse,
    this.category,
    this.coursename,
    this.description,
    this.price,
    this.createdat,
    this.updatedat,
  });

  Course.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    typecourse = json['type course'] as int;
    category = json['category'] as int;
    coursename = json['course name'] as String;
    description = json['description'] as String;
    price = json['price'] as int;
    createdat = json['created at'] as DateTime;
    updatedat = json['updated at'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type course'] = this.typecourse;
    data['category'] = this.category;
    data['course name'] = this.coursename;
    data['description'] = this.description;
    data['price'] = this.price;
    data['created at'] = this.createdat;
    data['updated at'] = this.updatedat;
    return data;
  }
}
