class Role {
  int? id;
  String? rolename;
  String? description;
  DateTime? createdat;
  DateTime? updatedat;

  Role({
    this.id,
    this.rolename,
    this.description,
    this.createdat,
    this.updatedat,
  });

  Role.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    rolename = json['role name'] as String;
    description = json['description'] as String;
    createdat = json['created at'] as DateTime;
    updatedat = json['updated at'] as DateTime;
  }

   Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role name'] = this.rolename;
    data['description'] = this.description;
    data['created at'] = this.createdat;
    data['updated at'] = this.updatedat;
    return data;
  }
}