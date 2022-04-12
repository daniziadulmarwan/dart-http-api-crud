
class User {
  int id;
  String email;
  String fullname;
  String avatar;

  User(
      {required this.id,
      required this.email,
      required this.fullname,
      required this.avatar});

      factory User.fromJson(Map<String, dynamic> json) {
        return User(
          id: json['id'],
          email: json['email'],
          fullname: json['first_name'] + ' ' + json['last_name'],
          avatar: json['avatar']
        );
      }
}
