import 'package:get_it/get_it.dart';

import '../services/rest.dart';
import '../screens/user/user_viewmodel.dart';

import '../services/auth/auth_service.dart';
import '../services/counter/counter_service.dart';

import '../services/auth/auth_service_rest.dart';
import '../services/counter/counter_service_rest.dart';

// import '../services/auth/auth_service_mock.dart';
// import '../services/counter/counter_service_mock.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services

  dependency.registerLazySingleton<RestService>(
    () => RestService(
        baseUrl: 'http://192.168.100.43:3001'), // with Local JSON-server
    // () => RestService(
    //     baseUrl:
    //         'http://192.168.0.5:5001/mvvm-frontend-and-mvc-backend/us-central1/api'), // with Local Firebase
  );

  dependency.registerLazySingleton<CounterService>(() => CounterServiceRest());
  dependency.registerLazySingleton<AuthService>(() => AuthServiceRest());
  // dependency.registerLazySingleton<TournamentService>(() => TournamentServiceRest());
  // dependency.registerLazySingleton<CounterService>(() => CounterServiceMock());
  // dependency.registerLazySingleton<AuthService>(() => AuthServiceMock());

  // Viewmodels
  dependency.registerLazySingleton(() => UserViewmodel());
}
