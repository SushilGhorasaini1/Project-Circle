// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;

import 'core/network/network_info.dart' as _i7;
import 'core/network/network_info_injectable.dart' as _i22;
import 'data/core/firebase_injectable.dart' as _i21;
import 'data/datasources/auth_remote_data_source.dart' as _i11;
import 'data/datasources/user_remote_data_source.dart' as _i8;
import 'data/repositories/auth_repository_impl.dart' as _i13;
import 'data/repositories/user_repository_impl.dart' as _i10;
import 'domain/repositories/auth_repository.dart' as _i12;
import 'domain/repositories/user_repository.dart' as _i9;
import 'domain/usecases/get_all_users_except_me.dart' as _i14;
import 'domain/usecases/get_current_user.dart' as _i15;
import 'domain/usecases/sign_in_with_google.dart' as _i17;
import 'domain/usecases/sign_out.dart' as _i18;
import 'presentation/blocs/auth_bloc/auth_bloc.dart' as _i19;
import 'presentation/blocs/search_bloc/search_bloc.dart' as _i16;
import 'presentation/blocs/sign_in_bloc/sign_in_bloc.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectable = _$FirebaseInjectable();
  final networkInfoInjectable = _$NetworkInfoInjectable();
  gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseInjectable.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(() => firebaseInjectable.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(() => firebaseInjectable.googleSignIn);
  gh.lazySingleton<_i6.InternetConnectionChecker>(
      () => networkInfoInjectable.connectionChecker);
  gh.lazySingleton<_i7.NetworkInfo>(
      () => _i7.NetworkInfoImpl(get<_i6.InternetConnectionChecker>()));
  gh.lazySingleton<_i8.UserRemoteDataSource>(() => _i8.UserRemoteDataSourceImpl(
      get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i9.UserRepository>(() => _i10.UserRepositoryImpl(
      get<_i7.NetworkInfo>(), get<_i8.UserRemoteDataSource>()));
  gh.lazySingleton<_i11.AuthRemoteDataSource>(() =>
      _i11.AuthRemoteDataSourceImpl(get<_i3.FirebaseAuth>(),
          get<_i5.GoogleSignIn>(), get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i12.AuthRepository>(() => _i13.AuthRepositoryImpl(
      get<_i7.NetworkInfo>(), get<_i11.AuthRemoteDataSource>()));
  gh.lazySingleton<_i14.GetAllUsersExceptMe>(
      () => _i14.GetAllUsersExceptMe(get<_i9.UserRepository>()));
  gh.lazySingleton<_i15.GetCurrentUser>(
      () => _i15.GetCurrentUser(get<_i12.AuthRepository>()));
  gh.factory<_i16.SearchBloc>(
      () => _i16.SearchBloc(get<_i14.GetAllUsersExceptMe>()));
  gh.lazySingleton<_i17.SignInWithGoogle>(
      () => _i17.SignInWithGoogle(get<_i12.AuthRepository>()));
  gh.lazySingleton<_i18.SignOut>(
      () => _i18.SignOut(get<_i12.AuthRepository>()));
  gh.factory<_i19.AuthBloc>(
      () => _i19.AuthBloc(get<_i15.GetCurrentUser>(), get<_i18.SignOut>()));
  gh.factory<_i20.SignInBloc>(
      () => _i20.SignInBloc(get<_i17.SignInWithGoogle>()));
  return get;
}

class _$FirebaseInjectable extends _i21.FirebaseInjectable {}

class _$NetworkInfoInjectable extends _i22.NetworkInfoInjectable {}
