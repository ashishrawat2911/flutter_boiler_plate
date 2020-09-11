import 'package:flutter/material.dart';

enum FlavorEnvironment { Prod, Dev, Test }

class FlavorConfig {
  final FlavorEnvironment environment;
  final Color color;
  final String baseUrl;
  final String assetBaseUrl;

  static FlavorConfig _instance;

  FlavorConfig._internal(
      this.environment, this.color, this.baseUrl, this.assetBaseUrl);

  static FlavorConfig get instance => _instance;

  factory FlavorConfig({
    FlavorEnvironment environment: FlavorEnvironment.Test,
    Color color: Colors.red,
    String baseUrl,
    String assetBaseUrl,
  }) {
    _instance ??= FlavorConfig._internal(
      environment,
      color,
      baseUrl,
      baseUrl,
    );

    return _instance;
  }

  static void setUpFlavor(
      {FlavorEnvironment defaultEnvironment = FlavorEnvironment.Test}) {
    FlavorEnvironment getFlavorEnvironment() {
      const environment = String.fromEnvironment('environment');
      switch (environment) {
        case "Test":
          return FlavorEnvironment.Test;
        case "Prod":
          return FlavorEnvironment.Prod;
        case "Dev":
          return FlavorEnvironment.Dev;
        default:
          return null;
      }
    }

    String getBaseUrl(FlavorEnvironment environment) {
      switch (environment) {
        case FlavorEnvironment.Prod:
          return "";

        case FlavorEnvironment.Dev:
          return "";

        case FlavorEnvironment.Test:
          return "";
      }
      return "";
    }

    var flavorEnvironment = getFlavorEnvironment() ?? defaultEnvironment;
    FlavorConfig(
        environment: flavorEnvironment, baseUrl: getBaseUrl(flavorEnvironment));
  }
}
