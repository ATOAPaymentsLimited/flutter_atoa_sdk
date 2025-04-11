import 'package:atoa_flutter_sdk/src/di/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String environment) async {
  getIt.allowReassignment = true;
  getIt.init(environment: environment);
}
