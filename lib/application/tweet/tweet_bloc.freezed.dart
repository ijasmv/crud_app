// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tweet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TweetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetEventCopyWith<$Res> {
  factory $TweetEventCopyWith(
          TweetEvent value, $Res Function(TweetEvent) then) =
      _$TweetEventCopyWithImpl<$Res, TweetEvent>;
}

/// @nodoc
class _$TweetEventCopyWithImpl<$Res, $Val extends TweetEvent>
    implements $TweetEventCopyWith<$Res> {
  _$TweetEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddTweetCopyWith<$Res> {
  factory _$$AddTweetCopyWith(
          _$AddTweet value, $Res Function(_$AddTweet) then) =
      __$$AddTweetCopyWithImpl<$Res>;
  @useResult
  $Res call({TweetData data});
}

/// @nodoc
class __$$AddTweetCopyWithImpl<$Res>
    extends _$TweetEventCopyWithImpl<$Res, _$AddTweet>
    implements _$$AddTweetCopyWith<$Res> {
  __$$AddTweetCopyWithImpl(_$AddTweet _value, $Res Function(_$AddTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AddTweet(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetData,
    ));
  }
}

/// @nodoc

class _$AddTweet implements AddTweet {
  const _$AddTweet({required this.data});

  @override
  final TweetData data;

  @override
  String toString() {
    return 'TweetEvent.addTweet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTweet &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddTweetCopyWith<_$AddTweet> get copyWith =>
      __$$AddTweetCopyWithImpl<_$AddTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) {
    return addTweet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) {
    return addTweet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) {
    if (addTweet != null) {
      return addTweet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) {
    return addTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) {
    return addTweet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) {
    if (addTweet != null) {
      return addTweet(this);
    }
    return orElse();
  }
}

abstract class AddTweet implements TweetEvent {
  const factory AddTweet({required final TweetData data}) = _$AddTweet;

  TweetData get data;
  @JsonKey(ignore: true)
  _$$AddTweetCopyWith<_$AddTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTweetCopyWith<$Res> {
  factory _$$EditTweetCopyWith(
          _$EditTweet value, $Res Function(_$EditTweet) then) =
      __$$EditTweetCopyWithImpl<$Res>;
  @useResult
  $Res call({TweetData data});
}

/// @nodoc
class __$$EditTweetCopyWithImpl<$Res>
    extends _$TweetEventCopyWithImpl<$Res, _$EditTweet>
    implements _$$EditTweetCopyWith<$Res> {
  __$$EditTweetCopyWithImpl(
      _$EditTweet _value, $Res Function(_$EditTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditTweet(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TweetData,
    ));
  }
}

/// @nodoc

class _$EditTweet implements EditTweet {
  const _$EditTweet({required this.data});

  @override
  final TweetData data;

  @override
  String toString() {
    return 'TweetEvent.editTweet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTweet &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTweetCopyWith<_$EditTweet> get copyWith =>
      __$$EditTweetCopyWithImpl<_$EditTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) {
    return editTweet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) {
    return editTweet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) {
    if (editTweet != null) {
      return editTweet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) {
    return editTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) {
    return editTweet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) {
    if (editTweet != null) {
      return editTweet(this);
    }
    return orElse();
  }
}

abstract class EditTweet implements TweetEvent {
  const factory EditTweet({required final TweetData data}) = _$EditTweet;

  TweetData get data;
  @JsonKey(ignore: true)
  _$$EditTweetCopyWith<_$EditTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTweetCopyWith<$Res> {
  factory _$$DeleteTweetCopyWith(
          _$DeleteTweet value, $Res Function(_$DeleteTweet) then) =
      __$$DeleteTweetCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteTweetCopyWithImpl<$Res>
    extends _$TweetEventCopyWithImpl<$Res, _$DeleteTweet>
    implements _$$DeleteTweetCopyWith<$Res> {
  __$$DeleteTweetCopyWithImpl(
      _$DeleteTweet _value, $Res Function(_$DeleteTweet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTweet(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTweet implements DeleteTweet {
  const _$DeleteTweet({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'TweetEvent.deleteTweet(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTweet &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTweetCopyWith<_$DeleteTweet> get copyWith =>
      __$$DeleteTweetCopyWithImpl<_$DeleteTweet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) {
    return deleteTweet(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) {
    return deleteTweet?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) {
    return deleteTweet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) {
    return deleteTweet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) {
    if (deleteTweet != null) {
      return deleteTweet(this);
    }
    return orElse();
  }
}

abstract class DeleteTweet implements TweetEvent {
  const factory DeleteTweet({required final String id}) = _$DeleteTweet;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteTweetCopyWith<_$DeleteTweet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTweetsCopyWith<$Res> {
  factory _$$GetTweetsCopyWith(
          _$GetTweets value, $Res Function(_$GetTweets) then) =
      __$$GetTweetsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTweetsCopyWithImpl<$Res>
    extends _$TweetEventCopyWithImpl<$Res, _$GetTweets>
    implements _$$GetTweetsCopyWith<$Res> {
  __$$GetTweetsCopyWithImpl(
      _$GetTweets _value, $Res Function(_$GetTweets) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTweets implements GetTweets {
  const _$GetTweets();

  @override
  String toString() {
    return 'TweetEvent.getTweets()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTweets);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) {
    return getTweets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) {
    return getTweets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) {
    if (getTweets != null) {
      return getTweets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) {
    return getTweets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) {
    return getTweets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) {
    if (getTweets != null) {
      return getTweets(this);
    }
    return orElse();
  }
}

abstract class GetTweets implements TweetEvent {
  const factory GetTweets() = _$GetTweets;
}

/// @nodoc
abstract class _$$GetTweetsStreamCopyWith<$Res> {
  factory _$$GetTweetsStreamCopyWith(
          _$GetTweetsStream value, $Res Function(_$GetTweetsStream) then) =
      __$$GetTweetsStreamCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTweetsStreamCopyWithImpl<$Res>
    extends _$TweetEventCopyWithImpl<$Res, _$GetTweetsStream>
    implements _$$GetTweetsStreamCopyWith<$Res> {
  __$$GetTweetsStreamCopyWithImpl(
      _$GetTweetsStream _value, $Res Function(_$GetTweetsStream) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetTweetsStream implements GetTweetsStream {
  const _$GetTweetsStream();

  @override
  String toString() {
    return 'TweetEvent.getTweetsStream()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTweetsStream);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TweetData data) addTweet,
    required TResult Function(TweetData data) editTweet,
    required TResult Function(String id) deleteTweet,
    required TResult Function() getTweets,
    required TResult Function() getTweetsStream,
  }) {
    return getTweetsStream();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TweetData data)? addTweet,
    TResult? Function(TweetData data)? editTweet,
    TResult? Function(String id)? deleteTweet,
    TResult? Function()? getTweets,
    TResult? Function()? getTweetsStream,
  }) {
    return getTweetsStream?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TweetData data)? addTweet,
    TResult Function(TweetData data)? editTweet,
    TResult Function(String id)? deleteTweet,
    TResult Function()? getTweets,
    TResult Function()? getTweetsStream,
    required TResult orElse(),
  }) {
    if (getTweetsStream != null) {
      return getTweetsStream();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTweet value) addTweet,
    required TResult Function(EditTweet value) editTweet,
    required TResult Function(DeleteTweet value) deleteTweet,
    required TResult Function(GetTweets value) getTweets,
    required TResult Function(GetTweetsStream value) getTweetsStream,
  }) {
    return getTweetsStream(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddTweet value)? addTweet,
    TResult? Function(EditTweet value)? editTweet,
    TResult? Function(DeleteTweet value)? deleteTweet,
    TResult? Function(GetTweets value)? getTweets,
    TResult? Function(GetTweetsStream value)? getTweetsStream,
  }) {
    return getTweetsStream?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTweet value)? addTweet,
    TResult Function(EditTweet value)? editTweet,
    TResult Function(DeleteTweet value)? deleteTweet,
    TResult Function(GetTweets value)? getTweets,
    TResult Function(GetTweetsStream value)? getTweetsStream,
    required TResult orElse(),
  }) {
    if (getTweetsStream != null) {
      return getTweetsStream(this);
    }
    return orElse();
  }
}

abstract class GetTweetsStream implements TweetEvent {
  const factory GetTweetsStream() = _$GetTweetsStream;
}

/// @nodoc
mixin _$TweetState {
  List<TweetData> get tweets => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  TweetStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TweetStateCopyWith<TweetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TweetStateCopyWith<$Res> {
  factory $TweetStateCopyWith(
          TweetState value, $Res Function(TweetState) then) =
      _$TweetStateCopyWithImpl<$Res, TweetState>;
  @useResult
  $Res call(
      {List<TweetData> tweets,
      bool isLoading,
      String errorMessage,
      TweetStatus status});

  $TweetStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$TweetStateCopyWithImpl<$Res, $Val extends TweetState>
    implements $TweetStateCopyWith<$Res> {
  _$TweetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweets = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      tweets: null == tweets
          ? _value.tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TweetStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TweetStatusCopyWith<$Res> get status {
    return $TweetStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TweetStateCopyWith<$Res>
    implements $TweetStateCopyWith<$Res> {
  factory _$$_TweetStateCopyWith(
          _$_TweetState value, $Res Function(_$_TweetState) then) =
      __$$_TweetStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TweetData> tweets,
      bool isLoading,
      String errorMessage,
      TweetStatus status});

  @override
  $TweetStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_TweetStateCopyWithImpl<$Res>
    extends _$TweetStateCopyWithImpl<$Res, _$_TweetState>
    implements _$$_TweetStateCopyWith<$Res> {
  __$$_TweetStateCopyWithImpl(
      _$_TweetState _value, $Res Function(_$_TweetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tweets = null,
    Object? isLoading = null,
    Object? errorMessage = null,
    Object? status = null,
  }) {
    return _then(_$_TweetState(
      tweets: null == tweets
          ? _value._tweets
          : tweets // ignore: cast_nullable_to_non_nullable
              as List<TweetData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TweetStatus,
    ));
  }
}

/// @nodoc

class _$_TweetState implements _TweetState {
  const _$_TweetState(
      {required final List<TweetData> tweets,
      required this.isLoading,
      required this.errorMessage,
      required this.status})
      : _tweets = tweets;

  final List<TweetData> _tweets;
  @override
  List<TweetData> get tweets {
    if (_tweets is EqualUnmodifiableListView) return _tweets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tweets);
  }

  @override
  final bool isLoading;
  @override
  final String errorMessage;
  @override
  final TweetStatus status;

  @override
  String toString() {
    return 'TweetState(tweets: $tweets, isLoading: $isLoading, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TweetState &&
            const DeepCollectionEquality().equals(other._tweets, _tweets) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tweets),
      isLoading,
      errorMessage,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TweetStateCopyWith<_$_TweetState> get copyWith =>
      __$$_TweetStateCopyWithImpl<_$_TweetState>(this, _$identity);
}

abstract class _TweetState implements TweetState {
  const factory _TweetState(
      {required final List<TweetData> tweets,
      required final bool isLoading,
      required final String errorMessage,
      required final TweetStatus status}) = _$_TweetState;

  @override
  List<TweetData> get tweets;
  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  TweetStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TweetStateCopyWith<_$_TweetState> get copyWith =>
      throw _privateConstructorUsedError;
}
