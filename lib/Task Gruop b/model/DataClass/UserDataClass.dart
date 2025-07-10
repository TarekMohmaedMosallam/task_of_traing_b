import 'package:equatable/equatable.dart';

class UserAccount extends Equatable {
  final String firstName;
  final String lastName;
  final String accessToken;
  final String image;

  const UserAccount({
    required this.firstName,
    required this.lastName,
    required this.accessToken,
    required this.image,
  });

  factory UserAccount.fromJson(Map<String, dynamic> json) {
    return UserAccount(
      firstName: json['firstName'] ?? '',
      lastName: json['lastName'] ?? '',
      accessToken: json['accessToken'] ?? '',
      image: json['image'] ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'accessToken': accessToken,
        'image': image,
      };

  @override
  List<Object?> get props => [firstName, lastName, accessToken, image];
}
