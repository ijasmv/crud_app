// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tweet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TweetData _$TweetDataFromJson(Map<String, dynamic> json) => TweetData(
      id: json['id'] as String? ?? "",
      postedDate: json['postedDate'] as String? ?? "",
      userId: json['userId'] as String? ?? "",
      tweet: json['tweet'] as String? ?? "",
    );

Map<String, dynamic> _$TweetDataToJson(TweetData instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'tweet': instance.tweet,
      'postedDate': instance.postedDate,
    };
