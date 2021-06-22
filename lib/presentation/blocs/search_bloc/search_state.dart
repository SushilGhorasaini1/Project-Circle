part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searching() = _Searching;
  const factory SearchState.noResultFound() = _NoResultFound;
  const factory SearchState.searchCompleted({required List<AppUser> userList}) =
      _SearchCompleted;
  const factory SearchState.searchError({required Failure failure}) =
      _SearchError;
}
