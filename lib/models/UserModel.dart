class UserModel {
  String email;
  String password;
  String uid;

  UserModel({
    required this.email,
    required this.password,
    required this.uid,
  });

  set setUid(value) => uid = value;

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'password' : password,
        'email': email,
      };
}
