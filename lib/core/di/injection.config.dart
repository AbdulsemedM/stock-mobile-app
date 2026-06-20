// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;
import 'package:stockflow/core/di/register_module.dart' as _i101;
import 'package:stockflow/core/network/dio_client.dart' as _i239;
import 'package:stockflow/core/network/interceptors/auth_interceptor.dart'
    as _i1039;
import 'package:stockflow/core/network/interceptors/error_interceptor.dart'
    as _i320;
import 'package:stockflow/core/network/interceptors/logging_interceptor.dart'
    as _i594;
import 'package:stockflow/features/auth/data/datasources/auth_remote_datasource.dart'
    as _i315;
import 'package:stockflow/features/auth/data/repositories/auth_repository_impl.dart'
    as _i810;
import 'package:stockflow/features/auth/domain/repositories/auth_repository.dart'
    as _i153;
import 'package:stockflow/features/auth/presentation/bloc/auth_bloc.dart'
    as _i727;
import 'package:stockflow/features/cycle_counts/data/datasources/cycle_count_remote_datasource.dart'
    as _i398;
import 'package:stockflow/features/cycle_counts/data/repositories/cycle_count_repository_impl.dart'
    as _i603;
import 'package:stockflow/features/cycle_counts/domain/repositories/cycle_count_repository.dart'
    as _i153;
import 'package:stockflow/features/cycle_counts/presentation/bloc/cycle_count_bloc.dart'
    as _i1002;
import 'package:stockflow/features/dashboard/data/datasources/dashboard_remote_datasource.dart'
    as _i433;
import 'package:stockflow/features/dashboard/data/repositories/dashboard_repository.dart'
    as _i372;
import 'package:stockflow/features/dashboard/presentation/cubit/dashboard_cubit.dart'
    as _i734;
import 'package:stockflow/features/inventory/data/datasources/inventory_remote_datasource.dart'
    as _i468;
import 'package:stockflow/features/inventory/data/repositories/inventory_repository_impl.dart'
    as _i47;
import 'package:stockflow/features/inventory/domain/repositories/inventory_repository.dart'
    as _i264;
import 'package:stockflow/features/inventory/presentation/bloc/inventory_bloc.dart'
    as _i939;
import 'package:stockflow/features/invoices/data/datasources/invoice_remote_datasource.dart'
    as _i506;
import 'package:stockflow/features/invoices/data/repositories/invoice_repository_impl.dart'
    as _i297;
import 'package:stockflow/features/invoices/domain/repositories/invoice_repository.dart'
    as _i274;
import 'package:stockflow/features/invoices/presentation/bloc/invoice_bloc.dart'
    as _i153;
import 'package:stockflow/features/notifications/data/datasources/notifications_remote_datasource.dart'
    as _i1014;
import 'package:stockflow/features/notifications/data/repositories/notifications_repository.dart'
    as _i1073;
import 'package:stockflow/features/notifications/presentation/cubit/notifications_cubit.dart'
    as _i22;
import 'package:stockflow/features/picking/data/datasources/picking_remote_datasource.dart'
    as _i931;
import 'package:stockflow/features/picking/data/repositories/picking_repository_impl.dart'
    as _i806;
import 'package:stockflow/features/picking/domain/repositories/picking_repository.dart'
    as _i1068;
import 'package:stockflow/features/picking/presentation/bloc/picking_bloc.dart'
    as _i963;
import 'package:stockflow/features/products/data/datasources/product_remote_datasource.dart'
    as _i744;
import 'package:stockflow/features/products/data/repositories/product_repository_impl.dart'
    as _i505;
import 'package:stockflow/features/products/domain/repositories/product_repository.dart'
    as _i919;
import 'package:stockflow/features/products/presentation/bloc/products_bloc.dart'
    as _i304;
import 'package:stockflow/features/purchase_orders/data/datasources/purchase_order_remote_datasource.dart'
    as _i908;
import 'package:stockflow/features/purchase_orders/data/repositories/purchase_order_repository_impl.dart'
    as _i830;
import 'package:stockflow/features/purchase_orders/domain/repositories/purchase_order_repository.dart'
    as _i81;
import 'package:stockflow/features/purchase_orders/presentation/bloc/purchase_order_bloc.dart'
    as _i15;
import 'package:stockflow/features/sales_orders/data/datasources/sales_order_remote_datasource.dart'
    as _i544;
import 'package:stockflow/features/sales_orders/data/repositories/sales_order_repository_impl.dart'
    as _i152;
import 'package:stockflow/features/sales_orders/domain/repositories/sales_order_repository.dart'
    as _i113;
import 'package:stockflow/features/sales_orders/presentation/bloc/sales_order_bloc.dart'
    as _i695;
import 'package:stockflow/features/scanning/presentation/cubit/scanner_cubit.dart'
    as _i691;
import 'package:stockflow/features/settings/data/datasources/settings_remote_datasource.dart'
    as _i368;
import 'package:stockflow/features/settings/data/repositories/settings_repository.dart'
    as _i1012;
import 'package:stockflow/features/settings/presentation/cubit/settings_cubit.dart'
    as _i959;
import 'package:stockflow/features/transfers/data/datasources/transfer_remote_datasource.dart'
    as _i759;
import 'package:stockflow/features/transfers/data/repositories/transfer_repository_impl.dart'
    as _i237;
import 'package:stockflow/features/transfers/domain/repositories/transfer_repository.dart'
    as _i916;
import 'package:stockflow/features/transfers/presentation/bloc/transfer_bloc.dart'
    as _i167;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i691.ScannerCubit>(() => _i691.ScannerCubit());
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i895.Connectivity>(() => registerModule.connectivity);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => registerModule.prefs(),
      preResolve: true,
    );
    gh.lazySingleton<_i594.LoggingInterceptor>(
      () => _i594.LoggingInterceptor(),
    );
    gh.lazySingleton<_i1039.AuthInterceptor>(
      () => _i1039.AuthInterceptor(gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i320.ErrorInterceptor>(
      () => _i320.ErrorInterceptor(gh<_i895.Connectivity>()),
    );
    gh.lazySingleton<_i239.DioClient>(
      () => _i239.DioClient(
        gh<_i1039.AuthInterceptor>(),
        gh<_i320.ErrorInterceptor>(),
        gh<_i594.LoggingInterceptor>(),
      ),
    );
    gh.lazySingleton<_i315.AuthRemoteDataSource>(
      () => _i315.AuthRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i433.DashboardRemoteDataSource>(
      () => _i433.DashboardRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i744.ProductRemoteDataSource>(
      () => _i744.ProductRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i468.InventoryRemoteDataSource>(
      () => _i468.InventoryRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i908.PurchaseOrderRemoteDataSource>(
      () => _i908.PurchaseOrderRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i398.CycleCountRemoteDataSource>(
      () => _i398.CycleCountRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i931.PickingRemoteDataSource>(
      () => _i931.PickingRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i544.SalesOrderRemoteDataSource>(
      () => _i544.SalesOrderRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i759.TransferRemoteDataSource>(
      () => _i759.TransferRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i506.InvoiceRemoteDataSource>(
      () => _i506.InvoiceRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i1014.NotificationsRemoteDataSource>(
      () => _i1014.NotificationsRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i368.SettingsRemoteDataSource>(
      () => _i368.SettingsRemoteDataSource(gh<_i239.DioClient>()),
    );
    gh.lazySingleton<_i274.InvoiceRepository>(
      () => _i297.InvoiceRepositoryImpl(gh<_i506.InvoiceRemoteDataSource>()),
    );
    gh.lazySingleton<_i1068.PickingRepository>(
      () => _i806.PickingRepositoryImpl(gh<_i931.PickingRemoteDataSource>()),
    );
    gh.lazySingleton<_i1073.NotificationsRepository>(
      () => _i1073.NotificationsRepository(
        gh<_i1014.NotificationsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i113.SalesOrderRepository>(
      () => _i152.SalesOrderRepositoryImpl(
        gh<_i544.SalesOrderRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i153.CycleCountRepository>(
      () => _i603.CycleCountRepositoryImpl(
        gh<_i398.CycleCountRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i916.TransferRepository>(
      () => _i237.TransferRepositoryImpl(gh<_i759.TransferRemoteDataSource>()),
    );
    gh.lazySingleton<_i153.AuthRepository>(
      () => _i810.AuthRepositoryImpl(
        gh<_i315.AuthRemoteDataSource>(),
        gh<_i558.FlutterSecureStorage>(),
      ),
    );
    gh.lazySingleton<_i372.DashboardRepository>(
      () => _i372.DashboardRepository(gh<_i433.DashboardRemoteDataSource>()),
    );
    gh.factory<_i963.PickingBloc>(
      () => _i963.PickingBloc(gh<_i1068.PickingRepository>()),
    );
    gh.factory<_i695.SalesOrderBloc>(
      () => _i695.SalesOrderBloc(gh<_i113.SalesOrderRepository>()),
    );
    gh.lazySingleton<_i264.InventoryRepository>(
      () => _i47.InventoryRepositoryImpl(gh<_i468.InventoryRemoteDataSource>()),
    );
    gh.lazySingleton<_i81.PurchaseOrderRepository>(
      () => _i830.PurchaseOrderRepositoryImpl(
        gh<_i908.PurchaseOrderRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1012.SettingsRepository>(
      () => _i1012.SettingsRepository(
        gh<_i368.SettingsRemoteDataSource>(),
        gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i919.ProductRepository>(
      () => _i505.ProductRepositoryImpl(gh<_i744.ProductRemoteDataSource>()),
    );
    gh.factory<_i153.InvoiceBloc>(
      () => _i153.InvoiceBloc(gh<_i274.InvoiceRepository>()),
    );
    gh.factory<_i939.InventoryBloc>(
      () => _i939.InventoryBloc(gh<_i264.InventoryRepository>()),
    );
    gh.factory<_i1002.CycleCountBloc>(
      () => _i1002.CycleCountBloc(gh<_i153.CycleCountRepository>()),
    );
    gh.factory<_i22.NotificationsCubit>(
      () => _i22.NotificationsCubit(gh<_i1073.NotificationsRepository>()),
    );
    gh.factory<_i734.DashboardCubit>(
      () => _i734.DashboardCubit(gh<_i372.DashboardRepository>()),
    );
    gh.factory<_i167.TransferBloc>(
      () => _i167.TransferBloc(gh<_i916.TransferRepository>()),
    );
    gh.factory<_i304.ProductsBloc>(
      () => _i304.ProductsBloc(gh<_i919.ProductRepository>()),
    );
    gh.factory<_i959.SettingsCubit>(
      () => _i959.SettingsCubit(gh<_i1012.SettingsRepository>()),
    );
    gh.lazySingleton<_i727.AuthBloc>(
      () => _i727.AuthBloc(gh<_i153.AuthRepository>()),
    );
    gh.factory<_i15.PurchaseOrderBloc>(
      () => _i15.PurchaseOrderBloc(gh<_i81.PurchaseOrderRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i101.RegisterModule {}
