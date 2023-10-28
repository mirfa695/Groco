class User {
  String? sId;
  String? name;
  String? email;
  int? phno;
  String? password;
  String? role;
  int? iV;

  User(
      {this.sId,
        this.name,
        this.email,
        this.phno,
        this.password,
        this.role,
        this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    phno = json['phno'];
    password = json['password'];
    role = json['role'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phno'] = this.phno;
    data['password'] = this.password;
    data['role'] = this.role;
    data['__v'] = this.iV;
    return data;
  }
}