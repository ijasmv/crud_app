import 'package:crud_app/domain/tweet/i_tweet_repo.dart';
import 'package:crud_app/domain/tweet/status/tweet_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/tweet/model/tweet_data.dart';

part 'tweet_event.dart';
part 'tweet_state.dart';
part 'tweet_bloc.freezed.dart';

@injectable
class TweetBloc extends Bloc<TweetEvent, TweetState> {
  final ITweetRepo _iTweetRepo;
  TweetBloc(this._iTweetRepo) : super(TweetState.initial()) {
    // Add Tweet
    on<AddTweet>((event, emit) async {
      emit(state.copyWith(isLoading: true, status: const TweetStatus()));
      try {
        String response = await _iTweetRepo.addTweet(data: event.data);
        if (response.isNotEmpty) {
          emit(state.copyWith(isLoading: false, status: const TweetStatus.added()));
        } else {
          emit(state.copyWith(
              isLoading: false, status: const TweetStatus.failed(), errorMessage: "Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, status: const TweetStatus.failed(), errorMessage: e.toString()));
      }
    });

    // Edit Tweet
    on<EditTweet>((event, emit) async {
      emit(state.copyWith(isLoading: true, status: const TweetStatus()));
      try {
        bool status = await _iTweetRepo.editTweet(data: event.data);
        if (status) {
          emit(state.copyWith(isLoading: false, status: const TweetStatus.edited()));
        } else {
          emit(state.copyWith(
              isLoading: false, status: const TweetStatus.failed(), errorMessage: "Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, status: const TweetStatus.failed(), errorMessage: e.toString()));
      }
    });

    // Delete Tweet
    on<DeleteTweet>((event, emit) async {
      emit(state.copyWith(isLoading: true, status: const TweetStatus()));
      try {
        bool status = await _iTweetRepo.deleteTweet(id: event.id);
        if (status) {
          emit(state.copyWith(isLoading: false, status: const TweetStatus.deleted()));
        } else {
          emit(state.copyWith(
              isLoading: false, status: const TweetStatus.failed(), errorMessage: "Failed"));
        }
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, status: const TweetStatus.failed(), errorMessage: e.toString()));
      }
    });

    // Get All Tweets
    on<GetTweets>((event, emit) async {
      emit(state.copyWith(isLoading: true, status: const TweetStatus()));
      try {
        List<TweetData> response = await _iTweetRepo.getAll();
        emit(state.copyWith(
            tweets: response, isLoading: false, status: const TweetStatus.fetched()));
      } catch (e) {
        emit(state.copyWith(
            tweets: [],
            isLoading: false,
            status: const TweetStatus.failed(),
            errorMessage: e.toString()));
      }
    });

    // Get Tweets Stream
    on<GetTweetsStream>((event, emit) async {
      try {
        await emit.forEach(
          _iTweetRepo.getTweetsStream(),
          onData: (data) {
            data.sort((a, b) => b.postedDate.compareTo(a.postedDate));
            return state.copyWith(status: const TweetStatus.fetched(), tweets: data);
          },
        );
      } catch (_) {}
    });
  }
}
