part of 'tweet_bloc.dart';

@freezed
class TweetEvent with _$TweetEvent {
  const factory TweetEvent.addTweet({required TweetData data}) = AddTweet;
  const factory TweetEvent.editTweet({required TweetData data}) = EditTweet;
  const factory TweetEvent.deleteTweet({required String id}) = DeleteTweet;
  const factory TweetEvent.getTweets() = GetTweets;
  const factory TweetEvent.getTweetsStream() = GetTweetsStream;
}
