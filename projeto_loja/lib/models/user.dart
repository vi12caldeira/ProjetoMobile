import 'dart:ffi';

class User{
  int? id;
  String? username;
  String? pass;

  User(this.id, this.username, this.pass);

  Map<String, dynamic> toMap() {
      var map = <String, dynamic>{
      'id': id,
      'username': username,
      'pass': pass,
      };
      return map;
   }

   User.fromMap(Map<String, dynamic> userMap){
    this.id       = userMap['id'];
    this.username = userMap['username'];
    this.pass     = userMap['pass'];
   }

   bool autenticar(User user){
    if(username == user.username && pass == user.pass){
      return true;
    }

    return false;
   }




}