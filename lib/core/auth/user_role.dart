import '../../features/auth/domain/entities/user.dart';

/// Application roles that determine navigation shell and available features.
enum UserRole {
  salesperson,
  admin;

  String get value => name;

  static UserRole fromString(String? role) {
    if (role == null || role.isEmpty) return UserRole.admin;
    final normalized = role.toLowerCase().replaceAll(' ', '_');
    switch (normalized) {
      case 'salesperson':
      case 'sales':
      case 'sales_person':
        return UserRole.salesperson;
      case 'admin':
      case 'warehouse_manager':
      case 'manager':
        return UserRole.admin;
      default:
        return UserRole.admin;
    }
  }

  static UserRole fromUser(User? user) => fromString(user?.role);
}
