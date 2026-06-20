import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/utils/repository_helper.dart';
import '../../../../core/utils/result.dart';
import '../../domain/entities/warehouse.dart';
import '../datasources/settings_remote_datasource.dart';
import '../prefs/settings_prefs.dart';

/// Repository for settings and warehouse selection.
@lazySingleton
class SettingsRepository {
  SettingsRepository(this._remote, this._prefs);

  final SettingsRemoteDataSource _remote;
  final SharedPreferences _prefs;

  Future<Result<List<Warehouse>>> getWarehouses() {
    return catchException(() async {
      final models = await _remote.getWarehouses();
      return models.map((m) => m.toEntity()).toList();
    });
  }

  String? getLastWarehouseId() => _prefs.getString(lastWarehouseIdKey);

  Future<void> saveLastWarehouseId(String warehouseId) async {
    await _prefs.setString(lastWarehouseIdKey, warehouseId);
  }
}
