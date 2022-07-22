class LoginResponseModel {
  final String token;
  final String error;

  LoginResponseModel({
    required this.token,
    required this.error
  });
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(
        token: json['token']!,
        error: json['error']!
    );
  }
}

class LoginRequestModel {
  late String mat;
  late String password;

  LoginRequestModel({
    required this.mat,
    required this.password
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "mat": mat.toString(), "password": password.toString(),
    };
    return map;
  }
}