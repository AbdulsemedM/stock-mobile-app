import 'package:equatable/equatable.dart';

/// In-app notification entity.
class AppNotification extends Equatable {
  const AppNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.type,
    required this.isRead,
    required this.createdAt,
  });

  final String id;
  final String title;
  final String body;
  final String type;
  final bool isRead;
  final DateTime createdAt;

  @override
  List<Object?> get props => [id, title, createdAt];
}
