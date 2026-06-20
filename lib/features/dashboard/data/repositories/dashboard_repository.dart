import 'package:injectable/injectable.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../datasources/dashboard_remote_datasource.dart';
import '../models/dashboard_models.dart';

/// Repository for dashboard data.
@lazySingleton
class DashboardRepository {
  DashboardRepository(this._remote);

  final DashboardRemoteDataSource _remote;

  Future<Result<DashboardData>> getDashboard() {
    return catchException(_remote.fetchDashboard);
  }
}
