class AuthModel {
  String? messages;
  String? token;

  AuthModel({
    this.messages,
    this.token,
  });

  AuthModel.fromJson(Map<String, dynamic> json){
    messages = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messages'] = this.messages;
    data['token'] = this.token;
    return data;
  }
}