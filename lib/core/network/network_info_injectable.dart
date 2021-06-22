import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


@module
abstract class NetworkInfoInjectable {
  @lazySingleton
  InternetConnectionChecker get connectionChecker =>
      InternetConnectionChecker();
}
