import 'package:atoa_core/atoa_core.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  @lazySingleton
  Atoa get atoa => Atoa();
}
