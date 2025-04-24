import 'package:atoa_core/src/config/environment.dart';

class AtoaSdkConfig {
  static Future<void> initialize({
    required AtoaEnvironment environment,
  }) async {
    // Initialize with environment-specific values if not provided

    AtoaConfig.env = environment;
  }

  static set currentEnvironment(AtoaEnvironment environment) {
    AtoaConfig.environment = environment;
  }

  static AtoaEnvironment get currentEnvironment => AtoaConfig.environment;
  static String get baseUrl => AtoaConfig.baseUrl;
}
