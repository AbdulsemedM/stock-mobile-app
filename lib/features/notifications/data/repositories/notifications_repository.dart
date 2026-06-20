import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../datasources/notifications_remote_datasource.dart';
import '../models/notification_model.dart';

/// Repository for notifications data.
@lazySingleton
class NotificationsRepository {
  NotificationsRepository(this._remote);

  final NotificationsRemoteDataSource _remote;

  Future<Result<List<NotificationModel>>> getNotifications() {
    return catchException(_remote.getNotifications);
  }
}
