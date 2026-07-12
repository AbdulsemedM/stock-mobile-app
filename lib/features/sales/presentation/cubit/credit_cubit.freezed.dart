// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreditState {

 StateStatus get status; List<CreditEntry> get entries; double get totalDue; String get searchQuery; String? get errorMessage;
/// Create a copy of CreditState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreditStateCopyWith<CreditState> get copyWith => _$CreditStateCopyWithImpl<CreditState>(this as CreditState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreditState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.entries, entries)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(entries),totalDue,searchQuery,errorMessage);

@override
String toString() {
  return 'CreditState(status: $status, entries: $entries, totalDue: $totalDue, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreditStateCopyWith<$Res>  {
  factory $CreditStateCopyWith(CreditState value, $Res Function(CreditState) _then) = _$CreditStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<CreditEntry> entries, double totalDue, String searchQuery, String? errorMessage
});




}
/// @nodoc
class _$CreditStateCopyWithImpl<$Res>
    implements $CreditStateCopyWith<$Res> {
  _$CreditStateCopyWithImpl(this._self, this._then);

  final CreditState _self;
  final $Res Function(CreditState) _then;

/// Create a copy of CreditState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? entries = null,Object? totalDue = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,entries: null == entries ? _self.entries : entries // ignore: cast_nullable_to_non_nullable
as List<CreditEntry>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as double,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreditState].
extension CreditStatePatterns on CreditState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreditState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreditState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreditState value)  $default,){
final _that = this;
switch (_that) {
case _CreditState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreditState value)?  $default,){
final _that = this;
switch (_that) {
case _CreditState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<CreditEntry> entries,  double totalDue,  String searchQuery,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreditState() when $default != null:
return $default(_that.status,_that.entries,_that.totalDue,_that.searchQuery,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<CreditEntry> entries,  double totalDue,  String searchQuery,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CreditState():
return $default(_that.status,_that.entries,_that.totalDue,_that.searchQuery,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<CreditEntry> entries,  double totalDue,  String searchQuery,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CreditState() when $default != null:
return $default(_that.status,_that.entries,_that.totalDue,_that.searchQuery,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CreditState implements CreditState {
  const _CreditState({this.status = StateStatus.initial, final  List<CreditEntry> entries = const [], this.totalDue = 0.0, this.searchQuery = '', this.errorMessage}): _entries = entries;
  

@override@JsonKey() final  StateStatus status;
 final  List<CreditEntry> _entries;
@override@JsonKey() List<CreditEntry> get entries {
  if (_entries is EqualUnmodifiableListView) return _entries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_entries);
}

@override@JsonKey() final  double totalDue;
@override@JsonKey() final  String searchQuery;
@override final  String? errorMessage;

/// Create a copy of CreditState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreditStateCopyWith<_CreditState> get copyWith => __$CreditStateCopyWithImpl<_CreditState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreditState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._entries, _entries)&&(identical(other.totalDue, totalDue) || other.totalDue == totalDue)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_entries),totalDue,searchQuery,errorMessage);

@override
String toString() {
  return 'CreditState(status: $status, entries: $entries, totalDue: $totalDue, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CreditStateCopyWith<$Res> implements $CreditStateCopyWith<$Res> {
  factory _$CreditStateCopyWith(_CreditState value, $Res Function(_CreditState) _then) = __$CreditStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<CreditEntry> entries, double totalDue, String searchQuery, String? errorMessage
});




}
/// @nodoc
class __$CreditStateCopyWithImpl<$Res>
    implements _$CreditStateCopyWith<$Res> {
  __$CreditStateCopyWithImpl(this._self, this._then);

  final _CreditState _self;
  final $Res Function(_CreditState) _then;

/// Create a copy of CreditState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? entries = null,Object? totalDue = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_CreditState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,entries: null == entries ? _self._entries : entries // ignore: cast_nullable_to_non_nullable
as List<CreditEntry>,totalDue: null == totalDue ? _self.totalDue : totalDue // ignore: cast_nullable_to_non_nullable
as double,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
