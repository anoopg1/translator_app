// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguages,
    required TResult Function(String text, String from, String to)
        translateText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguages,
    TResult? Function(String text, String from, String to)? translateText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguages,
    TResult Function(String text, String from, String to)? translateText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguages value) getAllLanguages,
    required TResult Function(TranslateText value) translateText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguages value)? getAllLanguages,
    TResult? Function(TranslateText value)? translateText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguages value)? getAllLanguages,
    TResult Function(TranslateText value)? translateText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllLanguagesImplCopyWith<$Res> {
  factory _$$GetAllLanguagesImplCopyWith(_$GetAllLanguagesImpl value,
          $Res Function(_$GetAllLanguagesImpl) then) =
      __$$GetAllLanguagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllLanguagesImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllLanguagesImpl>
    implements _$$GetAllLanguagesImplCopyWith<$Res> {
  __$$GetAllLanguagesImplCopyWithImpl(
      _$GetAllLanguagesImpl _value, $Res Function(_$GetAllLanguagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllLanguagesImpl implements GetAllLanguages {
  const _$GetAllLanguagesImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllLanguages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllLanguagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguages,
    required TResult Function(String text, String from, String to)
        translateText,
  }) {
    return getAllLanguages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguages,
    TResult? Function(String text, String from, String to)? translateText,
  }) {
    return getAllLanguages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguages,
    TResult Function(String text, String from, String to)? translateText,
    required TResult orElse(),
  }) {
    if (getAllLanguages != null) {
      return getAllLanguages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguages value) getAllLanguages,
    required TResult Function(TranslateText value) translateText,
  }) {
    return getAllLanguages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguages value)? getAllLanguages,
    TResult? Function(TranslateText value)? translateText,
  }) {
    return getAllLanguages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguages value)? getAllLanguages,
    TResult Function(TranslateText value)? translateText,
    required TResult orElse(),
  }) {
    if (getAllLanguages != null) {
      return getAllLanguages(this);
    }
    return orElse();
  }
}

abstract class GetAllLanguages implements HomeEvent {
  const factory GetAllLanguages() = _$GetAllLanguagesImpl;
}

/// @nodoc
abstract class _$$TranslateTextImplCopyWith<$Res> {
  factory _$$TranslateTextImplCopyWith(
          _$TranslateTextImpl value, $Res Function(_$TranslateTextImpl) then) =
      __$$TranslateTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String from, String to});
}

/// @nodoc
class __$$TranslateTextImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$TranslateTextImpl>
    implements _$$TranslateTextImplCopyWith<$Res> {
  __$$TranslateTextImplCopyWithImpl(
      _$TranslateTextImpl _value, $Res Function(_$TranslateTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$TranslateTextImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TranslateTextImpl implements TranslateText {
  const _$TranslateTextImpl(
      {required this.text, required this.from, required this.to});

  @override
  final String text;
  @override
  final String from;
  @override
  final String to;

  @override
  String toString() {
    return 'HomeEvent.translateText(text: $text, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranslateTextImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranslateTextImplCopyWith<_$TranslateTextImpl> get copyWith =>
      __$$TranslateTextImplCopyWithImpl<_$TranslateTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllLanguages,
    required TResult Function(String text, String from, String to)
        translateText,
  }) {
    return translateText(text, from, to);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllLanguages,
    TResult? Function(String text, String from, String to)? translateText,
  }) {
    return translateText?.call(text, from, to);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllLanguages,
    TResult Function(String text, String from, String to)? translateText,
    required TResult orElse(),
  }) {
    if (translateText != null) {
      return translateText(text, from, to);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLanguages value) getAllLanguages,
    required TResult Function(TranslateText value) translateText,
  }) {
    return translateText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLanguages value)? getAllLanguages,
    TResult? Function(TranslateText value)? translateText,
  }) {
    return translateText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLanguages value)? getAllLanguages,
    TResult Function(TranslateText value)? translateText,
    required TResult orElse(),
  }) {
    if (translateText != null) {
      return translateText(this);
    }
    return orElse();
  }
}

abstract class TranslateText implements HomeEvent {
  const factory TranslateText(
      {required final String text,
      required final String from,
      required final String to}) = _$TranslateTextImpl;

  String get text;
  String get from;
  String get to;
  @JsonKey(ignore: true)
  _$$TranslateTextImplCopyWith<_$TranslateTextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<dynamic> get languages => throw _privateConstructorUsedError;
  List<dynamic> get languageCode => throw _privateConstructorUsedError;
  String get translatedText => throw _privateConstructorUsedError;
  String get seletedFromLanguage => throw _privateConstructorUsedError;
  String get selectedToLnaguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<dynamic> languages,
      List<dynamic> languageCode,
      String translatedText,
      String seletedFromLanguage,
      String selectedToLnaguage});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
    Object? languageCode = null,
    Object? translatedText = null,
    Object? seletedFromLanguage = null,
    Object? selectedToLnaguage = null,
  }) {
    return _then(_value.copyWith(
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
      seletedFromLanguage: null == seletedFromLanguage
          ? _value.seletedFromLanguage
          : seletedFromLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToLnaguage: null == selectedToLnaguage
          ? _value.selectedToLnaguage
          : selectedToLnaguage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> languages,
      List<dynamic> languageCode,
      String translatedText,
      String seletedFromLanguage,
      String selectedToLnaguage});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languages = null,
    Object? languageCode = null,
    Object? translatedText = null,
    Object? seletedFromLanguage = null,
    Object? selectedToLnaguage = null,
  }) {
    return _then(_$HomeStateImpl(
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      languageCode: null == languageCode
          ? _value._languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      translatedText: null == translatedText
          ? _value.translatedText
          : translatedText // ignore: cast_nullable_to_non_nullable
              as String,
      seletedFromLanguage: null == seletedFromLanguage
          ? _value.seletedFromLanguage
          : seletedFromLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      selectedToLnaguage: null == selectedToLnaguage
          ? _value.selectedToLnaguage
          : selectedToLnaguage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required final List<dynamic> languages,
      required final List<dynamic> languageCode,
      required this.translatedText,
      required this.seletedFromLanguage,
      required this.selectedToLnaguage})
      : _languages = languages,
        _languageCode = languageCode;

  final List<dynamic> _languages;
  @override
  List<dynamic> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  final List<dynamic> _languageCode;
  @override
  List<dynamic> get languageCode {
    if (_languageCode is EqualUnmodifiableListView) return _languageCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageCode);
  }

  @override
  final String translatedText;
  @override
  final String seletedFromLanguage;
  @override
  final String selectedToLnaguage;

  @override
  String toString() {
    return 'HomeState(languages: $languages, languageCode: $languageCode, translatedText: $translatedText, seletedFromLanguage: $seletedFromLanguage, selectedToLnaguage: $selectedToLnaguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            const DeepCollectionEquality()
                .equals(other._languageCode, _languageCode) &&
            (identical(other.translatedText, translatedText) ||
                other.translatedText == translatedText) &&
            (identical(other.seletedFromLanguage, seletedFromLanguage) ||
                other.seletedFromLanguage == seletedFromLanguage) &&
            (identical(other.selectedToLnaguage, selectedToLnaguage) ||
                other.selectedToLnaguage == selectedToLnaguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_languages),
      const DeepCollectionEquality().hash(_languageCode),
      translatedText,
      seletedFromLanguage,
      selectedToLnaguage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<dynamic> languages,
      required final List<dynamic> languageCode,
      required final String translatedText,
      required final String seletedFromLanguage,
      required final String selectedToLnaguage}) = _$HomeStateImpl;

  @override
  List<dynamic> get languages;
  @override
  List<dynamic> get languageCode;
  @override
  String get translatedText;
  @override
  String get seletedFromLanguage;
  @override
  String get selectedToLnaguage;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
