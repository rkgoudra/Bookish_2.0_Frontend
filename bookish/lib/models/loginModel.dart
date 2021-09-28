class LoginModel {
  final int firstName;
  final String password;

  LoginModel({required this.firstName, required this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      firstName: json['firstName'],
      password: json['password'],
    );
  }
}
