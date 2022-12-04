import 'dart:convert';

class User {
  final String id;
  final String email;
  final String password;
  final String type;
  final String name;
  final String token;

  User(
      {required this.id,
      required this.email,
      required this.password,
      required this.type,
      required this.name,
      required this.token});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'type': type,
      'name': name,
      'token': token
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['_id'] ?? '',
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      type: map['type'] ?? '',
      name: map['name'] ?? '',
      token: map['token'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  User copyWith(
      {String? id,
      String? email,
      String? password,
      String? type,
      String? name,
      String? token}) {
    return User(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        type: type ?? this.type,
        name: name ?? this.name,
        token: token ?? this.token);
  }
}
