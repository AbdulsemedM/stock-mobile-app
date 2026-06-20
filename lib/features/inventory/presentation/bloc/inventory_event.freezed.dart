// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InventoryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InventoryEvent()';
}


}

/// @nodoc
class $InventoryEventCopyWith<$Res>  {
$InventoryEventCopyWith(InventoryEvent _, $Res Function(InventoryEvent) __);
}


/// Adds pattern-matching-related methods to [InventoryEvent].
extension InventoryEventPatterns on InventoryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InventoryLoadRequested value)?  loadRequested,TResult Function( InventoryWarehouseFilterChanged value)?  warehouseFilterChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InventoryLoadRequested() when loadRequested != null:
return loadRequested(_that);case InventoryWarehouseFilterChanged() when warehouseFilterChanged != null:
return warehouseFilterChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InventoryLoadRequested value)  loadRequested,required TResult Function( InventoryWarehouseFilterChanged value)  warehouseFilterChanged,}){
final _that = this;
switch (_that) {
case InventoryLoadRequested():
return loadRequested(_that);case InventoryWarehouseFilterChanged():
return warehouseFilterChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InventoryLoadRequested value)?  loadRequested,TResult? Function( InventoryWarehouseFilterChanged value)?  warehouseFilterChanged,}){
final _that = this;
switch (_that) {
case InventoryLoadRequested() when loadRequested != null:
return loadRequested(_that);case InventoryWarehouseFilterChanged() when warehouseFilterChanged != null:
return warehouseFilterChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? stockLevelId)?  loadRequested,TResult Function( String? warehouseId)?  warehouseFilterChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InventoryLoadRequested() when loadRequested != null:
return loadRequested(_that.stockLevelId);case InventoryWarehouseFilterChanged() when warehouseFilterChanged != null:
return warehouseFilterChanged(_that.warehouseId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? stockLevelId)  loadRequested,required TResult Function( String? warehouseId)  warehouseFilterChanged,}) {final _that = this;
switch (_that) {
case InventoryLoadRequested():
return loadRequested(_that.stockLevelId);case InventoryWarehouseFilterChanged():
return warehouseFilterChanged(_that.warehouseId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? stockLevelId)?  loadRequested,TResult? Function( String? warehouseId)?  warehouseFilterChanged,}) {final _that = this;
switch (_that) {
case InventoryLoadRequested() when loadRequested != null:
return loadRequested(_that.stockLevelId);case InventoryWarehouseFilterChanged() when warehouseFilterChanged != null:
return warehouseFilterChanged(_that.warehouseId);case _:
  return null;

}
}

}

/// @nodoc


class InventoryLoadRequested implements InventoryEvent {
  const InventoryLoadRequested({this.stockLevelId});
  

 final  String? stockLevelId;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryLoadRequestedCopyWith<InventoryLoadRequested> get copyWith => _$InventoryLoadRequestedCopyWithImpl<InventoryLoadRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryLoadRequested&&(identical(other.stockLevelId, stockLevelId) || other.stockLevelId == stockLevelId));
}


@override
int get hashCode => Object.hash(runtimeType,stockLevelId);

@override
String toString() {
  return 'InventoryEvent.loadRequested(stockLevelId: $stockLevelId)';
}


}

/// @nodoc
abstract mixin class $InventoryLoadRequestedCopyWith<$Res> implements $InventoryEventCopyWith<$Res> {
  factory $InventoryLoadRequestedCopyWith(InventoryLoadRequested value, $Res Function(InventoryLoadRequested) _then) = _$InventoryLoadRequestedCopyWithImpl;
@useResult
$Res call({
 String? stockLevelId
});




}
/// @nodoc
class _$InventoryLoadRequestedCopyWithImpl<$Res>
    implements $InventoryLoadRequestedCopyWith<$Res> {
  _$InventoryLoadRequestedCopyWithImpl(this._self, this._then);

  final InventoryLoadRequested _self;
  final $Res Function(InventoryLoadRequested) _then;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? stockLevelId = freezed,}) {
  return _then(InventoryLoadRequested(
stockLevelId: freezed == stockLevelId ? _self.stockLevelId : stockLevelId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class InventoryWarehouseFilterChanged implements InventoryEvent {
  const InventoryWarehouseFilterChanged({this.warehouseId});
  

 final  String? warehouseId;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryWarehouseFilterChangedCopyWith<InventoryWarehouseFilterChanged> get copyWith => _$InventoryWarehouseFilterChangedCopyWithImpl<InventoryWarehouseFilterChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryWarehouseFilterChanged&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId));
}


@override
int get hashCode => Object.hash(runtimeType,warehouseId);

@override
String toString() {
  return 'InventoryEvent.warehouseFilterChanged(warehouseId: $warehouseId)';
}


}

/// @nodoc
abstract mixin class $InventoryWarehouseFilterChangedCopyWith<$Res> implements $InventoryEventCopyWith<$Res> {
  factory $InventoryWarehouseFilterChangedCopyWith(InventoryWarehouseFilterChanged value, $Res Function(InventoryWarehouseFilterChanged) _then) = _$InventoryWarehouseFilterChangedCopyWithImpl;
@useResult
$Res call({
 String? warehouseId
});




}
/// @nodoc
class _$InventoryWarehouseFilterChangedCopyWithImpl<$Res>
    implements $InventoryWarehouseFilterChangedCopyWith<$Res> {
  _$InventoryWarehouseFilterChangedCopyWithImpl(this._self, this._then);

  final InventoryWarehouseFilterChanged _self;
  final $Res Function(InventoryWarehouseFilterChanged) _then;

/// Create a copy of InventoryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? warehouseId = freezed,}) {
  return _then(InventoryWarehouseFilterChanged(
warehouseId: freezed == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
