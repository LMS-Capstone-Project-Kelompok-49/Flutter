class Material {
  int? id;
  int? courseid;
  String? materialName;
  String? ppt;
  String? video;
  DateTime? created;
  DateTime? updated;

  Material({
    this.id,
    this.courseid,
    this.materialName,
    this.ppt,
    this.video,
    this.created,
    this.updated,
  });

  Material.fromJson(Map<String, dynamic> json){
    id = json['id'] as int;
    courseid = json['course id'] as int;
    materialName = json['material name'] as String;
    ppt = json['ppt'] as String;
    video = json['video'] as String;
    created = json['created'] as DateTime;
    updated = json['updated'] as DateTime;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course id'] = this.courseid;
    data['material name'] = this.materialName;
    data['ppt'] = this.ppt;
    data['video'] = this.video;
    data['created'] = this.created;
    data['updated'] = this.updated;
    return data;
  }
}
