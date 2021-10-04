import 'package:bookish/services/registerService.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'register-page';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerFormKey = GlobalKey<FormState>();

  final _firstNameTextController = TextEditingController();
  final _lastNameTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController(); //
  final _phoneNumberTextController = TextEditingController();
  final _focusFirstName = FocusNode();
  final _focusLastName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();
  final _focusPhoneNumber = FocusNode();

  bool _isProcessing = false;

  void _submit() {
    final isValid = _registerFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _registerFormKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusFirstName.unfocus();
        _focusLastName.unfocus();
        _focusEmail.unfocus();
        _focusPassword.unfocus();
        _focusPhoneNumber.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  key: _registerFormKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: _firstNameTextController,
                        focusNode: _focusFirstName,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          errorBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter First Name';
                          } else if (value.length < 3) {
                            return 'Invalid First Name';
                          } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            //allow upper and lower case alphabets and space
                            return "Enter Correct First Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _lastNameTextController,
                        focusNode: _focusLastName,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          errorBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Last Name';
                          } else if (value.length < 3) {
                            return 'Invalid Last Name';
                          } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            //allow upper and lower case alphabets and space
                            return "Enter Correct Last Name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _emailTextController,
                        focusNode: _focusEmail,
                        decoration: InputDecoration(
                          hintText: "Email",
                          errorBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Email';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value)) {
                            return "Enter Correct Email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _passwordTextController,
                        focusNode: _focusPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          errorBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                  .hasMatch(value)) {
                            //  r'^[0-9]{10}$' pattern plain match number with length 10
                            return "Enter Correct Password \n{Min: 1 Upper, lower, Numeric, Special Character of 8 length}\nAllowed Special chars {\! @ # \$ & * ~ } ";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 16.0),
                      TextFormField(
                        controller: _phoneNumberTextController,
                        focusNode: _focusPhoneNumber,
                        decoration: InputDecoration(
                          hintText: "Phone Number",
                          errorBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            borderSide: BorderSide(
                              color: Colors.red,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[0]?[789]\d{9}$').hasMatch(value)) {
                            //  r'^[0-9]{10}$' pattern plain match number with length 10
                            return "Enter Correct Phone Number\nPlease Don't include \+ Sign and Country Code.\n0 is acceptable.";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 32.0),
                      _isProcessing
                          ? CircularProgressIndicator()
                          : Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      try {
                                        _submit();
                                        setState(() {
                                          createUser(
                                            _firstNameTextController.text,
                                            _lastNameTextController.text,
                                            _emailTextController.text,
                                            _passwordTextController.text,
                                            _phoneNumberTextController.text,
                                          );

                                          // Navigator.of(context).pushNamed(UserPage.tag);
                                        });
                                      } catch (e) {
                                        print(e);
                                      }

                                      // print("Hello world");
                                    },
                                    child: Text(
                                      'Sign up',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width -
                                                200,
                                            40.0),
                                        primary: Colors.blueGrey),
                                  ),
                                ),
                                SizedBox(width: 14.00),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Hello world");
                                    },
                                    child: Text(
                                      'Clear',
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: Size(
                                            MediaQuery.of(context).size.width -
                                                200,
                                            40.0),
                                        primary: Colors.blueGrey),
                                  ),
                                ),
                              ],
                            )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
