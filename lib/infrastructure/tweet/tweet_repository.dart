import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_app/domain/tweet/i_tweet_repo.dart';
import 'package:crud_app/domain/tweet/model/tweet_data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ITweetRepo)
class TweetRepository implements ITweetRepo {
  final _firestoreInstance = FirebaseFirestore.instance;
  final String _collectionName = "tweets";
  final String _msgFailed = "Failed Operation";

  @override
  Future<String> addTweet({required TweetData data}) async {
    String id = "";
    try {
      DocumentReference docRef = _firestoreInstance.collection(_collectionName).doc();
      id = docRef.id;
      data.id = id;
      await _firestoreInstance.collection(_collectionName).doc(docRef.id).set(data.toJson());
    } on FirebaseException catch (e) {
      throw e.message ?? _msgFailed;
    }
    return id;
  }

  @override
  Future<bool> deleteTweet({required String id}) async {
    bool status = false;
    try {
      await _firestoreInstance.collection(_collectionName).doc(id).delete();
      status = true;
    } on FirebaseException catch (e) {
      status = false;
      throw e.message ?? _msgFailed;
    }
    return status;
  }

  @override
  Future<bool> editTweet({required TweetData data}) async {
    bool status = false;
    try {
      await _firestoreInstance.collection(_collectionName).doc(data.id).update(data.toJson());
      status = true;
    } on FirebaseException catch (e) {
      status = false;
      throw e.message ?? _msgFailed;
    }
    return status;
  }

  @override
  Future<List<TweetData>> getAll() async {
    List<Map<String, dynamic>> list = [];
    List<TweetData> response = [];
    try {
      await _firestoreInstance.collection(_collectionName).get().then((value) {
        list = value.docs.map((e) => e.data()).toList();
      });
      response = list.map((data) => TweetData.fromJson(data)).toList();
    } on FirebaseException catch (e) {
      response = [];
      throw e.message ?? _msgFailed;
    }
    return response;
  }

  @override
  Stream<List<TweetData>> getTweetsStream() {
    return _firestoreInstance
        .collection(_collectionName)
        .snapshots()
        .asyncMap((event) => event.docs.map((e) => TweetData.fromJson(e.data())).toList());
  }
}
