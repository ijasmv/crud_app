// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crud_app/application/auth/auth_bloc.dart' as _i8;
import 'package:crud_app/application/tweet/tweet_bloc.dart' as _i7;
import 'package:crud_app/domain/auth/i_auth_repo.dart' as _i3;
import 'package:crud_app/domain/tweet/i_tweet_repo.dart' as _i5;
import 'package:crud_app/infrastructure/auth/auth_repository.dart' as _i4;
import 'package:crud_app/infrastructure/tweet/tweet_repository.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IAuthRepo>(() => _i4.AuthRepository());
  gh.lazySingleton<_i5.ITweetRepo>(() => _i6.TweetRepository());
  gh.factory<_i7.TweetBloc>(() => _i7.TweetBloc(gh<_i5.ITweetRepo>()));
  gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i3.IAuthRepo>()));
  return getIt;
}
