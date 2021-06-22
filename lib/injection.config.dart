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
import 'core/network/network_info_injectable.dart' as _i30;
import 'data/core/firebase_injectable.dart' as _i29;
import 'data/datasources/auth_remote_data_source.dart' as _i11;
import 'data/datasources/chat_remote_data_source.dart' as _i14;
import 'data/datasources/user_remote_data_source.dart' as _i8;
import 'data/repositories/auth_repository_impl.dart' as _i13;
import 'data/repositories/chat_repository_impl.dart' as _i16;
import 'data/repositories/user_repository_impl.dart' as _i10;
import 'domain/repositories/auth_repository.dart' as _i12;
import 'domain/repositories/chat_repository.dart' as _i15;
import 'domain/repositories/user_repository.dart' as _i9;
import 'domain/usecases/get_all_users_except_me.dart' as _i17;
import 'domain/usecases/get_current_user.dart' as _i18;
import 'domain/usecases/get_message_stream.dart' as _i19;
import 'domain/usecases/send_message.dart' as _i22;
import 'domain/usecases/send_photo.dart' as _i23;
import 'domain/usecases/sign_in_with_google.dart' as _i24;
import 'domain/usecases/sign_out.dart' as _i25;
import 'presentation/blocs/auth_bloc/auth_bloc.dart' as _i26;
import 'presentation/blocs/message_bloc/message_bloc.dart' as _i20;
import 'presentation/blocs/search_bloc/search_bloc.dart' as _i21;
import 'presentation/blocs/sign_in_bloc/sign_in_bloc.dart' as _i28;
import 'presentation/cubits/cubit/chat_cubit.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i14.ChatRemoteDataSource>(() =>
      _i14.ChatRemoteDataSourceImpl(
          get<_i4.FirebaseFirestore>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i15.ChatRepository>(() => _i16.ChatRepositoryImpl(
      get<_i7.NetworkInfo>(), get<_i14.ChatRemoteDataSource>()));
  gh.lazySingleton<_i17.GetAllUsersExceptMe>(
      () => _i17.GetAllUsersExceptMe(get<_i9.UserRepository>()));
  gh.lazySingleton<_i18.GetCurrentUser>(
      () => _i18.GetCurrentUser(get<_i12.AuthRepository>()));
  gh.lazySingleton<_i19.GetMessageStream>(
      () => _i19.GetMessageStream(get<_i15.ChatRepository>()));
  gh.factory<_i20.MessageBloc>(
      () => _i20.MessageBloc(get<_i19.GetMessageStream>()));
  gh.factory<_i21.SearchBloc>(
      () => _i21.SearchBloc(get<_i17.GetAllUsersExceptMe>()));
  gh.lazySingleton<_i22.SendMessage>(
      () => _i22.SendMessage(get<_i15.ChatRepository>()));
  gh.lazySingleton<_i23.SendPhoto>(
      () => _i23.SendPhoto(get<_i15.ChatRepository>()));
  gh.lazySingleton<_i24.SignInWithGoogle>(
      () => _i24.SignInWithGoogle(get<_i12.AuthRepository>()));
  gh.lazySingleton<_i25.SignOut>(
      () => _i25.SignOut(get<_i12.AuthRepository>()));
  gh.factory<_i26.AuthBloc>(
      () => _i26.AuthBloc(get<_i18.GetCurrentUser>(), get<_i25.SignOut>()));
  gh.factory<_i27.ChatCubit>(
      () => _i27.ChatCubit(get<_i22.SendMessage>(), get<_i23.SendPhoto>()));
  gh.factory<_i28.SignInBloc>(
      () => _i28.SignInBloc(get<_i24.SignInWithGoogle>()));
  return get;
}

class _$FirebaseInjectable extends _i29.FirebaseInjectable {}

class _$NetworkInfoInjectable extends _i30.NetworkInfoInjectable {}
