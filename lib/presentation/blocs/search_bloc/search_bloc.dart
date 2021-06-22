import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:circle/core/errors/failure.dart';
import 'package:circle/domain/entities/app_user.dart';
import 'package:circle/domain/usecases/core/usecase.dart';
import 'package:circle/domain/usecases/get_all_users_except_me.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetAllUsersExceptMe _getAllUsersExceptMe;
  SearchBloc(this._getAllUsersExceptMe) : super(const SearchState.initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(searchStarted: (e) async* {
      yield const SearchState.searching();
      final failureOrSuccess = await _getAllUsersExceptMe(NoParam());
      yield failureOrSuccess.fold(
        (failure) => SearchState.searchError(failure: failure),
        (userList) {
          final searchList = userList.where((user) {
            final _getEmail = user.email.toLowerCase();
            final _query = e.query.toLowerCase();
            final _getName = user.name.toLowerCase();
            final matchesEmail = _getEmail.contains(_query);
            final matchesName = _getName.contains(_query);

            return matchesEmail || matchesName;
          }).toList();

          if (e.query.isEmpty) {
            return const SearchState.initial();
          }

          if (searchList.isEmpty) {
            return const SearchState.noResultFound();
          } else {
            return SearchState.searchCompleted(userList: searchList);
          }
        },
      );
    });
  }
}
