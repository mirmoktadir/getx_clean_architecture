import 'package:flutter/foundation.dart' show immutable;

@immutable
class UserEntity {
  final int? id;
  final String name;
  final String email;
  final Gender gender;
  final UserStatus status;

  const UserEntity(
      {required this.id,
      required this.name,
      required this.email,
      required this.gender,
      required this.status});
}

enum Gender { male, female, all }

enum UserStatus { inactive, active, all }
