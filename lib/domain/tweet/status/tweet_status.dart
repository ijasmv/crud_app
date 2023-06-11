import 'package:freezed_annotation/freezed_annotation.dart';
part 'tweet_status.freezed.dart';

@freezed
class TweetStatus with _$TweetStatus {
  const factory TweetStatus() = _TweetStatus;
  const factory TweetStatus.added() = _Added;
  const factory TweetStatus.deleted() = _Deleted;
  const factory TweetStatus.edited() = _Edited;
  const factory TweetStatus.fetched() = _Fetched;
  const factory TweetStatus.failed() = _Failed;
}
