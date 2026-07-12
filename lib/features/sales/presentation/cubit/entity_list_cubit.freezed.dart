// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EntityListState {

 StateStatus get status; List<NamedEntity> get items; String? get errorMessage;
/// Create a copy of EntityListState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EntityListStateCopyWith<EntityListState> get copyWith => _$EntityListStateCopyWithImpl<EntityListState>(this as EntityListState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EntityListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(items),errorMessage);

@override
String toString() {
  return 'EntityListState(status: $status, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $EntityListStateCopyWith<$Res>  {
  factory $EntityListStateCopyWith(EntityListState value, $Res Function(EntityListState) _then) = _$EntityListStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<NamedEntity> items, String? errorMessage
});




}
/// @nodoc
class _$EntityListStateCopyWithImpl<$Res>
    implements $EntityListStateCopyWith<$Res> {
  _$EntityListStateCopyWithImpl(this._self, this._then);

  final EntityListState _self;
  final $Res Function(EntityListState) _then;

/// Create a copy of EntityListState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<NamedEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EntityListState].
extension EntityListStatePatterns on EntityListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EntityListState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EntityListState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EntityListState value)  $default,){
final _that = this;
switch (_that) {
case _EntityListState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EntityListState value)?  $default,){
final _that = this;
switch (_that) {
case _EntityListState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<NamedEntity> items,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EntityListState() when $default != null:
return $default(_that.status,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<NamedEntity> items,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _EntityListState():
return $default(_that.status,_that.items,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<NamedEntity> items,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _EntityListState() when $default != null:
return $default(_that.status,_that.items,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _EntityListState implements EntityListState {
  const _EntityListState({this.status = StateStatus.initial, final  List<NamedEntity> items = const [], this.errorMessage}): _items = items;
  

@override@JsonKey() final  StateStatus status;
 final  List<NamedEntity> _items;
@override@JsonKey() List<NamedEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? errorMessage;

/// Create a copy of EntityListState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EntityListStateCopyWith<_EntityListState> get copyWith => __$EntityListStateCopyWithImpl<_EntityListState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EntityListState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_items),errorMessage);

@override
String toString() {
  return 'EntityListState(status: $status, items: $items, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$EntityListStateCopyWith<$Res> implements $EntityListStateCopyWith<$Res> {
  factory _$EntityListStateCopyWith(_EntityListState value, $Res Function(_EntityListState) _then) = __$EntityListStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<NamedEntity> items, String? errorMessage
});




}
/// @nodoc
class __$EntityListStateCopyWithImpl<$Res>
    implements _$EntityListStateCopyWith<$Res> {
  __$EntityListStateCopyWithImpl(this._self, this._then);

  final _EntityListState _self;
  final $Res Function(_EntityListState) _then;

/// Create a copy of EntityListState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? items = null,Object? errorMessage = freezed,}) {
  return _then(_EntityListState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<NamedEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
