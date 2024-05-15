import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String lastName;
  final String firstName;
  final String email;
  final String contactNumber;
  bool isDriver = false;

  UserModel({
    required this.lastName,
    required this.firstName,
    required this.contactNumber,
    required this.email,
    this.isDriver = false,
  });

  Map<String, dynamic> toJson() => {
        "LastName": lastName,
        "FirstName": firstName,
        "ContactNumber": contactNumber,
        "Email": email,
        "isDriver": isDriver,
      };

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['FirstName'] ?? '', // Provide a default value if it's null
      lastName: json['LastName'] ?? '', // Provide a default value if it's null
      contactNumber: json['ContactNumber']?? '',
      email: json['Email'] ?? '', // Provide a default value if it's null
    );
  }
}