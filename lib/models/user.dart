import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String profileName;
  final String username;
  final String url;
  final String email;
  final int age;
  final String phoneno;
  final String location;

  User({
    this.id,
    this.profileName,
    this.username,
    this.url,
    this.email,
    this.age,
    this.phoneno,
    this.location,
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      id: doc.documentID,
      email: doc['email'],
      username: doc['username'],
      url: doc['url'],
      profileName: doc['profileName'],
      age:doc['age'],
      phoneno: doc['phoneno'],
      location: doc['location']
    );
  }
}
