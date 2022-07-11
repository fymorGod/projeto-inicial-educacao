class AutoGenerate {
  AutoGenerate({
    required this.mat,
    required this.password,
  });
  late final String mat;
  late final String password;

  AutoGenerate.fromJson(Map<String, dynamic> json){
    mat = json['mat'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['mat'] = mat;
    _data['password'] = password;
    return _data;
  }
}