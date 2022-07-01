class User {
  int? uid;
  String? fullname;
  String? email;
  String? password;
  DateTime? dob;
  int? role;
  DateTime? created;
  DateTime? updated;

  User({
    this.uid,
    this.email,
    this.fullname,
    this.password,
    this.dob,
    this.role,
    this.created,
    this.updated,
  });

  User.fromJson(Map<String, dynamic> json){
    uid = json['id'] as int;
    email = json['email'] as String;
    fullname = json['fullname'] as String;
    password = json['password'] as String;
    dob = json['dob'] as DateTime;
    role = json['role'] as int;
    created = json['created'] as DateTime;
    updated = json['updated'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.uid;
    data['email'] = this.email;
    data['fullname'] = this.fullname;
    data['password'] = this.password;
    data['dob'] = this.dob;
    data['role'] = this.role;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
