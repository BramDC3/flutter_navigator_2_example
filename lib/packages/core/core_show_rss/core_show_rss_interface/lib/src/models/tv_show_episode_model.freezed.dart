// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tv_show_episode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TvShowEpisodeModel _$TvShowEpisodeModelFromJson(Map<String, dynamic> json) {
  return _TvShowEpisodeModel.fromJson(json);
}

/// @nodoc
class _$TvShowEpisodeModelTearOff {
  const _$TvShowEpisodeModelTearOff();

  _TvShowEpisodeModel call(
      {@JsonKey(name: 'tv:episode_id') required String episodeId,
      @JsonKey(name: 'title') required String episodeTitle,
      @JsonKey(name: 'pubDate') required String releaseDate,
      @JsonKey(name: 'tv:show_id') required String showId,
      @JsonKey(name: 'tv:show_name') required String showName}) {
    return _TvShowEpisodeModel(
      episodeId: episodeId,
      episodeTitle: episodeTitle,
      releaseDate: releaseDate,
      showId: showId,
      showName: showName,
    );
  }

  TvShowEpisodeModel fromJson(Map<String, Object> json) {
    return TvShowEpisodeModel.fromJson(json);
  }
}

/// @nodoc
const $TvShowEpisodeModel = _$TvShowEpisodeModelTearOff();

/// @nodoc
mixin _$TvShowEpisodeModel {
  @JsonKey(name: 'tv:episode_id')
  String get episodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get episodeTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'pubDate')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'tv:show_id')
  String get showId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tv:show_name')
  String get showName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TvShowEpisodeModelCopyWith<TvShowEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowEpisodeModelCopyWith<$Res> {
  factory $TvShowEpisodeModelCopyWith(
          TvShowEpisodeModel value, $Res Function(TvShowEpisodeModel) then) =
      _$TvShowEpisodeModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'tv:episode_id') String episodeId,
      @JsonKey(name: 'title') String episodeTitle,
      @JsonKey(name: 'pubDate') String releaseDate,
      @JsonKey(name: 'tv:show_id') String showId,
      @JsonKey(name: 'tv:show_name') String showName});
}

/// @nodoc
class _$TvShowEpisodeModelCopyWithImpl<$Res>
    implements $TvShowEpisodeModelCopyWith<$Res> {
  _$TvShowEpisodeModelCopyWithImpl(this._value, this._then);

  final TvShowEpisodeModel _value;
  // ignore: unused_field
  final $Res Function(TvShowEpisodeModel) _then;

  @override
  $Res call({
    Object? episodeId = freezed,
    Object? episodeTitle = freezed,
    Object? releaseDate = freezed,
    Object? showId = freezed,
    Object? showName = freezed,
  }) {
    return _then(_value.copyWith(
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeTitle: episodeTitle == freezed
          ? _value.episodeTitle
          : episodeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as String,
      showName: showName == freezed
          ? _value.showName
          : showName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TvShowEpisodeModelCopyWith<$Res>
    implements $TvShowEpisodeModelCopyWith<$Res> {
  factory _$TvShowEpisodeModelCopyWith(
          _TvShowEpisodeModel value, $Res Function(_TvShowEpisodeModel) then) =
      __$TvShowEpisodeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'tv:episode_id') String episodeId,
      @JsonKey(name: 'title') String episodeTitle,
      @JsonKey(name: 'pubDate') String releaseDate,
      @JsonKey(name: 'tv:show_id') String showId,
      @JsonKey(name: 'tv:show_name') String showName});
}

/// @nodoc
class __$TvShowEpisodeModelCopyWithImpl<$Res>
    extends _$TvShowEpisodeModelCopyWithImpl<$Res>
    implements _$TvShowEpisodeModelCopyWith<$Res> {
  __$TvShowEpisodeModelCopyWithImpl(
      _TvShowEpisodeModel _value, $Res Function(_TvShowEpisodeModel) _then)
      : super(_value, (v) => _then(v as _TvShowEpisodeModel));

  @override
  _TvShowEpisodeModel get _value => super._value as _TvShowEpisodeModel;

  @override
  $Res call({
    Object? episodeId = freezed,
    Object? episodeTitle = freezed,
    Object? releaseDate = freezed,
    Object? showId = freezed,
    Object? showName = freezed,
  }) {
    return _then(_TvShowEpisodeModel(
      episodeId: episodeId == freezed
          ? _value.episodeId
          : episodeId // ignore: cast_nullable_to_non_nullable
              as String,
      episodeTitle: episodeTitle == freezed
          ? _value.episodeTitle
          : episodeTitle // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: releaseDate == freezed
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      showId: showId == freezed
          ? _value.showId
          : showId // ignore: cast_nullable_to_non_nullable
              as String,
      showName: showName == freezed
          ? _value.showName
          : showName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_TvShowEpisodeModel implements _TvShowEpisodeModel {
  const _$_TvShowEpisodeModel(
      {@JsonKey(name: 'tv:episode_id') required this.episodeId,
      @JsonKey(name: 'title') required this.episodeTitle,
      @JsonKey(name: 'pubDate') required this.releaseDate,
      @JsonKey(name: 'tv:show_id') required this.showId,
      @JsonKey(name: 'tv:show_name') required this.showName});

  factory _$_TvShowEpisodeModel.fromJson(Map<String, dynamic> json) =>
      _$_$_TvShowEpisodeModelFromJson(json);

  @override
  @JsonKey(name: 'tv:episode_id')
  final String episodeId;
  @override
  @JsonKey(name: 'title')
  final String episodeTitle;
  @override
  @JsonKey(name: 'pubDate')
  final String releaseDate;
  @override
  @JsonKey(name: 'tv:show_id')
  final String showId;
  @override
  @JsonKey(name: 'tv:show_name')
  final String showName;

  @override
  String toString() {
    return 'TvShowEpisodeModel(episodeId: $episodeId, episodeTitle: $episodeTitle, releaseDate: $releaseDate, showId: $showId, showName: $showName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TvShowEpisodeModel &&
            (identical(other.episodeId, episodeId) ||
                const DeepCollectionEquality()
                    .equals(other.episodeId, episodeId)) &&
            (identical(other.episodeTitle, episodeTitle) ||
                const DeepCollectionEquality()
                    .equals(other.episodeTitle, episodeTitle)) &&
            (identical(other.releaseDate, releaseDate) ||
                const DeepCollectionEquality()
                    .equals(other.releaseDate, releaseDate)) &&
            (identical(other.showId, showId) ||
                const DeepCollectionEquality().equals(other.showId, showId)) &&
            (identical(other.showName, showName) ||
                const DeepCollectionEquality()
                    .equals(other.showName, showName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(episodeId) ^
      const DeepCollectionEquality().hash(episodeTitle) ^
      const DeepCollectionEquality().hash(releaseDate) ^
      const DeepCollectionEquality().hash(showId) ^
      const DeepCollectionEquality().hash(showName);

  @JsonKey(ignore: true)
  @override
  _$TvShowEpisodeModelCopyWith<_TvShowEpisodeModel> get copyWith =>
      __$TvShowEpisodeModelCopyWithImpl<_TvShowEpisodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TvShowEpisodeModelToJson(this);
  }
}

abstract class _TvShowEpisodeModel implements TvShowEpisodeModel {
  const factory _TvShowEpisodeModel(
          {@JsonKey(name: 'tv:episode_id') required String episodeId,
          @JsonKey(name: 'title') required String episodeTitle,
          @JsonKey(name: 'pubDate') required String releaseDate,
          @JsonKey(name: 'tv:show_id') required String showId,
          @JsonKey(name: 'tv:show_name') required String showName}) =
      _$_TvShowEpisodeModel;

  factory _TvShowEpisodeModel.fromJson(Map<String, dynamic> json) =
      _$_TvShowEpisodeModel.fromJson;

  @override
  @JsonKey(name: 'tv:episode_id')
  String get episodeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get episodeTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pubDate')
  String get releaseDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tv:show_id')
  String get showId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'tv:show_name')
  String get showName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TvShowEpisodeModelCopyWith<_TvShowEpisodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
