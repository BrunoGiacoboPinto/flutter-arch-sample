import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependencies.config.dart';

final inject = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureDependencies() => $initGetIt(inject);

@module
abstract class NetworkModule {
  @lazySingleton
  Dio get dio => Dio();
}
