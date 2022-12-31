import 'dart:convert';

class User {
  String firstName;
  String lastName;
  String email;
  String password;
  String profile;
  String schoolName;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.profile,
    required this.schoolName,
  });

  static User fromMap(Map<String, dynamic> user) {
    return new User(
      firstName: user['firstName'],
      lastName: user['lastName'],
      email: user['email'],
      password: user['password'],
      profile: user['profile'],
      schoolName: user['schoolName'],
    );
  }

  toMap() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'profile': profile,
      'schoolName': schoolName,
    };
  }
}