import 'package:crud_app/domain/tweet/model/tweet_data.dart';

abstract class ITweetRepo {
  Future<String> addTweet({required TweetData data});
  Future<bool> editTweet({required TweetData data});
  Future<bool> deleteTweet({required String id});
  Future<List<TweetData>> getAll();
  Stream<List<TweetData>> getTweetsStream();
}
