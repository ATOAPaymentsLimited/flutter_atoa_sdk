enum AtoaEnvironment {
  development,
  staging,
  production;

  String get baseUrl {
    switch (this) {
      case AtoaEnvironment.development:
        return 'https://devapi.atoa.me/api/';
      case AtoaEnvironment.staging:
        return 'https://uatapi.atoa.me/api/';
      case AtoaEnvironment.production:
        return 'https://api.atoa.me/api/';
    }
  }

  bool get isDevelopment => this == AtoaEnvironment.development;
  bool get isStaging => this == AtoaEnvironment.staging;
  bool get isProduction => this == AtoaEnvironment.production;
}

class AtoaConfig {
  static late AtoaEnvironment environment;

  static set env(
    AtoaEnvironment env,
  ) =>
      environment = env;

  static AtoaEnvironment get env => environment;

  static String get baseUrl => environment.baseUrl;
}
