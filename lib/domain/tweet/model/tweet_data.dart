import 'package:freezed_annotation/freezed_annotation.dart';
part 'tweet_data.g.dart';

@JsonSerializable()
class TweetData {
  String id;
  String userId;
  String userName;
  String tweet;
  String postedDate;

  TweetData({
    this.id = "",
    this.postedDate = "",
    this.userId = "",
    this.tweet = "",
    this.userName = "",
  });

  factory TweetData.fromJson(Map<String, dynamic> json) => _$TweetDataFromJson(json);

  Map<String, dynamic> toJson() => _$TweetDataToJson(this);
}
