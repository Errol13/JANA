import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String lastName;
  final String firstName;
  final String email;
  final String contactNumber;
  String? driverLicense;
  String? vehicleType;
  String? plateNumber;
  String? officialReceipt;
  bool isDriver;

  UserModel({
    required this.lastName,
    required this.firstName,
    required this.contactNumber,
    required this.email,
    this.driverLicense,
    this.vehicleType,
    this.plateNumber,
    this.officialReceipt,
    this.isDriver = false,
  });

  void markAsDriver({
    required String driverLicense,
    required String vehicleType,
    required String plateNumber,
    required String officialReceipt,
  }) {
    this.driverLicense = driverLicense;
    this.vehicleType = vehicleType;
    this.plateNumber = plateNumber;
    this.officialReceipt = officialReceipt;
    this.isDriver = true;
  }

  Map<String, dynamic> toJson() => {
        "LastName": lastName,
        "FirstName": firstName,
        "ContactNumber": contactNumber,
        "Email": email,
        "isDriver": isDriver,
        if (isDriver)
          ...{
            "DriverLicense": driverLicense,
            "VehicleType": vehicleType,
            "PlateNumber": plateNumber,
            "OfficialReceipt": officialReceipt,
          }
      };

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      firstName: json['FirstName'] ?? '',
      lastName: json['LastName'] ?? '',
      contactNumber: json['ContactNumber'] ?? '',
      email: json['Email'] ?? '',
      driverLicense: json['DriverLicense'],
      vehicleType: json['VehicleType'],
      plateNumber: json['PlateNumber'],
      officialReceipt: json['OfficialReceipt'],
      isDriver: json['isDriver'] ?? false,
    );
  }
}
