import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependencies.config.dart';

final inject = GetIt.instance;

@InjectableInit(preferRelativeImports: false, generateForDir: ['lib', 'test'])
void configureDependencies(String environment) => $initGetIt(inject, environment: environment);

@module
abstract class NetworkModule {
  @lazySingleton
  @Environment('prod')
  Dio get dio => Dio();
}
