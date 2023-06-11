part of 'tweet_bloc.dart';

@freezed
class TweetState with _$TweetState {
  const factory TweetState({
    required List<TweetData> tweets,
    required bool isLoading,
    required String errorMessage,
    required TweetStatus status,
  }) = _TweetState;

  factory TweetState.initial() {
    return const TweetState(
      tweets: [],
      isLoading: false,
      errorMessage: "",
      status: TweetStatus(),
    );
  }
}
