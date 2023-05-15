class User {
  final String email;
  final String gender;
  final String phoneNumber;
  final int birthDate;
  final String username;
  final String password;
  final String firstName;
  final String lastName;
  final String title;
  final String picture;
  bool isonline;

  User({
    required this.email,
    required this.gender,
    required this.phoneNumber,
    required this.birthDate,
    required this.username,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.title,
    required this.picture,
    required this.isonline,
  });
}
