class RegisterModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final int phoneNumber;

  RegisterModel(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.phoneNumber});

  factory RegisterModel.fromJson(Map<String, dynamic> json) {
    return RegisterModel(
      firstName: json['firstName'],
      lastName: json['lastName'],
      password: json['password'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
    );
  }
}
