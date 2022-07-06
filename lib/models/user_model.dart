class User {
  int? id;
  String? email;
  String? password;
  int? role;
  int? profile;
  DateTime? created;
  DateTime? updated;

  User({
    this.id,
    this.email,
    this.password,
    this.role,
    this.profile,
    this.created,
    this.updated,
  });

  User.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    email = json['email'] as String;
    password = json['password'] as String;
    role = json['role'] as int;
    profile = json['profile'] as int;
    created = json['created'] as DateTime;
    updated = json['updated'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    data['role'] = this.role;
    data['profile'] = this.profile;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
