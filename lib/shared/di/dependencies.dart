import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependencies.config.dart';

final inject = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(inject);

@module
abstract class NetworkModule {
  Dio get dio => Dio();
}
