import 'package:equatable/equatable.dart';

/// Authenticated user entity.
class User extends Equatable {
  const User({
    required this.id,
    required this.email,
    required this.name,
    this.role,
  });

  final String id;
  final String email;
  final String name;
  final String? role;

  @override
  List<Object?> get props => [id, email, name, role];
}
