class LoginModel {
  final String userLogin;
  // final String password;

  LoginModel({required this.userLogin});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return LoginModel(
      userLogin: json['userLogin'],
      // password: json['password'],
    );
  }
}
