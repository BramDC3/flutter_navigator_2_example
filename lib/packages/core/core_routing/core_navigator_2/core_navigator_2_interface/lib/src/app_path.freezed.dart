// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'app_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppPathTearOff {
  const _$AppPathTearOff();

  HomePath home() {
    return const HomePath();
  }

  LoginPath login() {
    return const LoginPath();
  }

  TvShowPath tvShow(String showName) {
    return TvShowPath(
      showName,
    );
  }

  EpisodePath episode(int episodeId, TvShowEpisode? tvShowEpisode) {
    return EpisodePath(
      episodeId,
      tvShowEpisode,
    );
  }

  UnknownPath unknown() {
    return const UnknownPath();
  }
}

/// @nodoc
const $AppPath = _$AppPathTearOff();

/// @nodoc
mixin _$AppPath {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppPathCopyWith<$Res> {
  factory $AppPathCopyWith(AppPath value, $Res Function(AppPath) then) =
      _$AppPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppPathCopyWithImpl<$Res> implements $AppPathCopyWith<$Res> {
  _$AppPathCopyWithImpl(this._value, this._then);

  final AppPath _value;
  // ignore: unused_field
  final $Res Function(AppPath) _then;
}

/// @nodoc
abstract class $HomePathCopyWith<$Res> {
  factory $HomePathCopyWith(HomePath value, $Res Function(HomePath) then) =
      _$HomePathCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePathCopyWithImpl<$Res> extends _$AppPathCopyWithImpl<$Res>
    implements $HomePathCopyWith<$Res> {
  _$HomePathCopyWithImpl(HomePath _value, $Res Function(HomePath) _then)
      : super(_value, (v) => _then(v as HomePath));

  @override
  HomePath get _value => super._value as HomePath;
}

/// @nodoc
class _$HomePath implements HomePath {
  const _$HomePath();

  @override
  String toString() {
    return 'AppPath.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomePath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class HomePath implements AppPath {
  const factory HomePath() = _$HomePath;
}

/// @nodoc
abstract class $LoginPathCopyWith<$Res> {
  factory $LoginPathCopyWith(LoginPath value, $Res Function(LoginPath) then) =
      _$LoginPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPathCopyWithImpl<$Res> extends _$AppPathCopyWithImpl<$Res>
    implements $LoginPathCopyWith<$Res> {
  _$LoginPathCopyWithImpl(LoginPath _value, $Res Function(LoginPath) _then)
      : super(_value, (v) => _then(v as LoginPath));

  @override
  LoginPath get _value => super._value as LoginPath;
}

/// @nodoc
class _$LoginPath implements LoginPath {
  const _$LoginPath();

  @override
  String toString() {
    return 'AppPath.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginPath implements AppPath {
  const factory LoginPath() = _$LoginPath;
}

/// @nodoc
abstract class $TvShowPathCopyWith<$Res> {
  factory $TvShowPathCopyWith(
          TvShowPath value, $Res Function(TvShowPath) then) =
      _$TvShowPathCopyWithImpl<$Res>;
  $Res call({String showName});
}

/// @nodoc
class _$TvShowPathCopyWithImpl<$Res> extends _$AppPathCopyWithImpl<$Res>
    implements $TvShowPathCopyWith<$Res> {
  _$TvShowPathCopyWithImpl(TvShowPath _value, $Res Function(TvShowPath) _then)
      : super(_value, (v) => _then(v as TvShowPath));

  @override
  TvShowPath get _value => super._value as TvShowPath;

  @override
  $Res call({
    Object? showName = freezed,
  }) {
    return _then(TvShowPath(
      showName == freezed
          ? _value.showName
          : showName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$TvShowPath implements TvShowPath {
  const _$TvShowPath(this.showName);

  @override
  final String showName;

  @override
  String toString() {
    return 'AppPath.tvShow(showName: $showName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TvShowPath &&
            (identical(other.showName, showName) ||
                const DeepCollectionEquality()
                    .equals(other.showName, showName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(showName);

  @JsonKey(ignore: true)
  @override
  $TvShowPathCopyWith<TvShowPath> get copyWith =>
      _$TvShowPathCopyWithImpl<TvShowPath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) {
    return tvShow(showName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(showName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) {
    return tvShow(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) {
    if (tvShow != null) {
      return tvShow(this);
    }
    return orElse();
  }
}

abstract class TvShowPath implements AppPath {
  const factory TvShowPath(String showName) = _$TvShowPath;

  String get showName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowPathCopyWith<TvShowPath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodePathCopyWith<$Res> {
  factory $EpisodePathCopyWith(
          EpisodePath value, $Res Function(EpisodePath) then) =
      _$EpisodePathCopyWithImpl<$Res>;
  $Res call({int episodeId, TvShowEpisode? tvShowEpisode});
}

/// @nodoc
class _$EpisodePathCopyWithImpl<$Res> extends _$AppPathCopyWithImpl<$Res>
    implements $EpisodePathCopyWith<$Res> {
  _$EpisodePathCopyWithImpl(
      EpisodePath _value, $Res Function(EpisodePath) _then)
      : super(_value, (v) => _then(v as EpisodePath));

  @override
  EpisodePath get _value => super._value as EpisodePath;

  @override
  $Res call({
    Object? episodeId = freezed,
    Object? tvShowEpisode = freezed,
  }) {
    return _then(EpisodePath(
      episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as int,
      tvShowEpisode == freezed
          ? _value.tvShowEpisode
          : tvShowEpisode // ignore: cast_nullable_to_non_nullable
              as TvShowEpisode?,
    ));
  }
}

/// @nodoc
class _$EpisodePath implements EpisodePath {
  const _$EpisodePath(this.episodeId, this.tvShowEpisode);

  @override
  final int episodeId;
  @override
  final TvShowEpisode? tvShowEpisode;

  @override
  String toString() {
    return 'AppPath.episode(episodeId: $episodeId, tvShowEpisode: $tvShowEpisode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EpisodePath &&
            (identical(other.episodeId, episodeId) ||
                const DeepCollectionEquality()
                    .equals(other.episodeId, episodeId)) &&
            (identical(other.tvShowEpisode, tvShowEpisode) ||
                const DeepCollectionEquality()
                    .equals(other.tvShowEpisode, tvShowEpisode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(episodeId) ^
      const DeepCollectionEquality().hash(tvShowEpisode);

  @JsonKey(ignore: true)
  @override
  $EpisodePathCopyWith<EpisodePath> get copyWith =>
      _$EpisodePathCopyWithImpl<EpisodePath>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) {
    return episode(episodeId, tvShowEpisode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (episode != null) {
      return episode(episodeId, tvShowEpisode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) {
    return episode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) {
    if (episode != null) {
      return episode(this);
    }
    return orElse();
  }
}

abstract class EpisodePath implements AppPath {
  const factory EpisodePath(int episodeId, TvShowEpisode? tvShowEpisode) =
      _$EpisodePath;

  int get episodeId => throw _privateConstructorUsedError;
  TvShowEpisode? get tvShowEpisode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodePathCopyWith<EpisodePath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownPathCopyWith<$Res> {
  factory $UnknownPathCopyWith(
          UnknownPath value, $Res Function(UnknownPath) then) =
      _$UnknownPathCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnknownPathCopyWithImpl<$Res> extends _$AppPathCopyWithImpl<$Res>
    implements $UnknownPathCopyWith<$Res> {
  _$UnknownPathCopyWithImpl(
      UnknownPath _value, $Res Function(UnknownPath) _then)
      : super(_value, (v) => _then(v as UnknownPath));

  @override
  UnknownPath get _value => super._value as UnknownPath;
}

/// @nodoc
class _$UnknownPath implements UnknownPath {
  const _$UnknownPath();

  @override
  String toString() {
    return 'AppPath.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnknownPath);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() home,
    required TResult Function() login,
    required TResult Function(String showName) tvShow,
    required TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)
        episode,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? home,
    TResult Function()? login,
    TResult Function(String showName)? tvShow,
    TResult Function(int episodeId, TvShowEpisode? tvShowEpisode)? episode,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomePath value) home,
    required TResult Function(LoginPath value) login,
    required TResult Function(TvShowPath value) tvShow,
    required TResult Function(EpisodePath value) episode,
    required TResult Function(UnknownPath value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomePath value)? home,
    TResult Function(LoginPath value)? login,
    TResult Function(TvShowPath value)? tvShow,
    TResult Function(EpisodePath value)? episode,
    TResult Function(UnknownPath value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownPath implements AppPath {
  const factory UnknownPath() = _$UnknownPath;
}
