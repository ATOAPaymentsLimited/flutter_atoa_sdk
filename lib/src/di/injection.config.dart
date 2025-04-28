// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:atoa_core/atoa_core.dart' as _i182;
import 'package:atoa_sdk/src/controllers/bank_institutions_controller.dart'
    as _i864;
import 'package:atoa_sdk/src/controllers/connectivity_controller.dart' as _i842;
import 'package:atoa_sdk/src/controllers/payment_status_controller.dart'
    as _i366;
import 'package:atoa_sdk/src/di/modules/app_module.dart' as _i180;
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i182.Atoa>(() => appModule.atoa);
    gh.lazySingleton<_i842.ConnectivityController>(() =>
        _i842.ConnectivityController(connectivity: gh<_i895.Connectivity>()));
    gh.factory<_i864.BankInstitutionsController>(
        () => _i864.BankInstitutionsController(atoa: gh<_i182.Atoa>()));
    gh.factory<_i366.PaymentStatusController>(
        () => _i366.PaymentStatusController(atoa: gh<_i182.Atoa>()));
    return this;
  }
}

class _$AppModule extends _i180.AppModule {}
