// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticleEvent {
  int get page => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchArticlesEvent value) fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchArticlesEvent value)? fetchArticles,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchArticlesEvent value)? fetchArticles,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleEventCopyWith<ArticleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleEventCopyWith<$Res> {
  factory $ArticleEventCopyWith(
          ArticleEvent value, $Res Function(ArticleEvent) then) =
      _$ArticleEventCopyWithImpl<$Res, ArticleEvent>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$ArticleEventCopyWithImpl<$Res, $Val extends ArticleEvent>
    implements $ArticleEventCopyWith<$Res> {
  _$ArticleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchArticlesEventCopyWith<$Res>
    implements $ArticleEventCopyWith<$Res> {
  factory _$$FetchArticlesEventCopyWith(_$FetchArticlesEvent value,
          $Res Function(_$FetchArticlesEvent) then) =
      __$$FetchArticlesEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$FetchArticlesEventCopyWithImpl<$Res>
    extends _$ArticleEventCopyWithImpl<$Res, _$FetchArticlesEvent>
    implements _$$FetchArticlesEventCopyWith<$Res> {
  __$$FetchArticlesEventCopyWithImpl(
      _$FetchArticlesEvent _value, $Res Function(_$FetchArticlesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$FetchArticlesEvent(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FetchArticlesEvent implements FetchArticlesEvent {
  const _$FetchArticlesEvent(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'ArticleEvent.fetchArticles(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchArticlesEvent &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchArticlesEventCopyWith<_$FetchArticlesEvent> get copyWith =>
      __$$FetchArticlesEventCopyWithImpl<_$FetchArticlesEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page) fetchArticles,
  }) {
    return fetchArticles(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page)? fetchArticles,
  }) {
    return fetchArticles?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page)? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchArticlesEvent value) fetchArticles,
  }) {
    return fetchArticles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchArticlesEvent value)? fetchArticles,
  }) {
    return fetchArticles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchArticlesEvent value)? fetchArticles,
    required TResult orElse(),
  }) {
    if (fetchArticles != null) {
      return fetchArticles(this);
    }
    return orElse();
  }
}

abstract class FetchArticlesEvent implements ArticleEvent {
  const factory FetchArticlesEvent(final int page) = _$FetchArticlesEvent;

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$FetchArticlesEventCopyWith<_$FetchArticlesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArticleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> oldArticles) loading,
    required TResult Function(List<Article> articles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> oldArticles)? loading,
    TResult? Function(List<Article> articles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> oldArticles)? loading,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res, ArticleState>;
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res, $Val extends ArticleState>
    implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ArticleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> oldArticles) loading,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> oldArticles)? loading,
    TResult? Function(List<Article> articles)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> oldArticles)? loading,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ArticleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> oldArticles});
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldArticles = null,
  }) {
    return _then(_$_Loading(
      null == oldArticles
          ? _value._oldArticles
          : oldArticles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(final List<Article> oldArticles)
      : _oldArticles = oldArticles;

  final List<Article> _oldArticles;
  @override
  List<Article> get oldArticles {
    if (_oldArticles is EqualUnmodifiableListView) return _oldArticles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldArticles);
  }

  @override
  String toString() {
    return 'ArticleState.loading(oldArticles: $oldArticles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loading &&
            const DeepCollectionEquality()
                .equals(other._oldArticles, _oldArticles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_oldArticles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      __$$_LoadingCopyWithImpl<_$_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> oldArticles) loading,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return loading(oldArticles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> oldArticles)? loading,
    TResult? Function(List<Article> articles)? loaded,
  }) {
    return loading?.call(oldArticles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> oldArticles)? loading,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(oldArticles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArticleState {
  const factory _Loading(final List<Article> oldArticles) = _$_Loading;

  List<Article> get oldArticles;
  @JsonKey(ignore: true)
  _$$_LoadingCopyWith<_$_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ArticleStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_Loaded(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Article> articles) : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'ArticleState.loaded(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> oldArticles) loading,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return loaded(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> oldArticles)? loading,
    TResult? Function(List<Article> articles)? loaded,
  }) {
    return loaded?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> oldArticles)? loading,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArticleState {
  const factory _Loaded(final List<Article> articles) = _$_Loaded;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
