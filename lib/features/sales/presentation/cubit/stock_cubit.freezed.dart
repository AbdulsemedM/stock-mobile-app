// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StockState {

 StateStatus get status; List<StockItem> get items; String get searchQuery; String? get errorMessage;
/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockStateCopyWith<StockState> get copyWith => _$StockStateCopyWithImpl<StockState>(this as StockState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),searchQuery,errorMessage);

@override
String toString() {
  return 'StockState(status: $status, items: $items, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $StockStateCopyWith<$Res>  {
  factory $StockStateCopyWith(StockState value, $Res Function(StockState) _then) = _$StockStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<StockItem> items, String searchQuery, String? errorMessage
});




}
/// @nodoc
class _$StockStateCopyWithImpl<$Res>
    implements $StockStateCopyWith<$Res> {
  _$StockStateCopyWithImpl(this._self, this._then);

  final StockState _self;
  final $Res Function(StockState) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<StockItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockState].
extension StockStatePatterns on StockState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockState value)  $default,){
final _that = this;
switch (_that) {
case _StockState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockState value)?  $default,){
final _that = this;
switch (_that) {
case _StockState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<StockItem> items,  String searchQuery,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockState() when $default != null:
return $default(_that.status,_that.items,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<StockItem> items,  String searchQuery,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _StockState():
return $default(_that.status,_that.items,_that.searchQuery,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<StockItem> items,  String searchQuery,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _StockState() when $default != null:
return $default(_that.status,_that.items,_that.searchQuery,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _StockState extends StockState {
  const _StockState({this.status = StateStatus.initial, final  List<StockItem> items = const [], this.searchQuery = '', this.errorMessage}): _items = items,super._();
  

@override@JsonKey() final  StateStatus status;
 final  List<StockItem> _items;
@override@JsonKey() List<StockItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  String searchQuery;
@override final  String? errorMessage;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockStateCopyWith<_StockState> get copyWith => __$StockStateCopyWithImpl<_StockState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),searchQuery,errorMessage);

@override
String toString() {
  return 'StockState(status: $status, items: $items, searchQuery: $searchQuery, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$StockStateCopyWith<$Res> implements $StockStateCopyWith<$Res> {
  factory _$StockStateCopyWith(_StockState value, $Res Function(_StockState) _then) = __$StockStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<StockItem> items, String searchQuery, String? errorMessage
});




}
/// @nodoc
class __$StockStateCopyWithImpl<$Res>
    implements _$StockStateCopyWith<$Res> {
  __$StockStateCopyWithImpl(this._self, this._then);

  final _StockState _self;
  final $Res Function(_StockState) _then;

/// Create a copy of StockState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? searchQuery = null,Object? errorMessage = freezed,}) {
  return _then(_StockState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<StockItem>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
