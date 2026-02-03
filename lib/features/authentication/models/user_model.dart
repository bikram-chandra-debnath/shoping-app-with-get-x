import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  // keep final which do not want to update
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;
  String publicId;

  UserModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.profilePicture,
    this.publicId = "",
  });

  // Function to get the full name
  String get fullName => "$firstName $lastName";

  // Static function to split full name into first name and last name
  static List<String> nameParts(fullName) => fullName.split("");

  // static function to create an empty user model
  static UserModel empty() => UserModel(
    id: "",
    userName: "",
    email: "",
    firstName: "",
    lastName: "",
    phoneNumber: "",
    profilePicture: "",
  );

  Map< String , dynamic> toJson(){
    return {
      'id': id,
      'firstName' : firstName,
      'lastName' : lastName,
      'username' : userName,
      'email' : email,
      'phoneNumber' : phoneNumber,
      'profilePicture' : profilePicture,
      'publicId' : publicId
    };
  }

  factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>>document){
if(document.data()!=null){
  final data = document.data()!;
  return UserModel(
    id: document.id,
          firstName: data['firstName'] ?? '',
          lastName: data['lastName'] ?? '',
          userName: data['username'] ?? '',
          email: data['email'] ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          profilePicture: data['profilePicture'] ?? '',
        publicId: data['publicId']
    );
}else{
  return UserModel.empty();
}
  }



}
