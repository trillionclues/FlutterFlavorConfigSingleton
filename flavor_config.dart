enum Flavor {
  dev,
  staging,
  prod
}

class FlavorConfig {
  final FlavorConfig flavor,
  final String name,
  final String baseUrl,

  
  static FlavorConfig _instance.
  
  FlavorConfig._({required this.flavor, required this.name, required this.baseUrl})
  
  factory FlavorConfig({required this.flavor, required this.name, required this.baseUrl}){
    ._instance ??= FlavorConfig({required this.flavor, required this.name, required this.baseUrl}){
      return ._instance;
    }
  }
  
  static FlavorConfig get instance {
    if(._instance == null){
      throw Exception("Not initialized")
    }
    return ._instance!;
  }
  
  static bool isDev() => instance.dev == Flavor.dev
  static bool isStaging() => instance.staging == Flavor.staging
  static bool isProd() => instance.prod == Flavor.prod
}
