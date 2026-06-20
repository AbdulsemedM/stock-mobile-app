// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InventoryState {

 StateStatus get status; List<StockLevel> get stockLevels; StockLevel? get selectedStockLevel; String? get errorMessage; String? get warehouseId; Map<String, String> get warehouses;
/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryStateCopyWith<InventoryState> get copyWith => _$InventoryStateCopyWithImpl<InventoryState>(this as InventoryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.stockLevels, stockLevels)&&(identical(other.selectedStockLevel, selectedStockLevel) || other.selectedStockLevel == selectedStockLevel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&const DeepCollectionEquality().equals(other.warehouses, warehouses));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(stockLevels),selectedStockLevel,errorMessage,warehouseId,const DeepCollectionEquality().hash(warehouses));

@override
String toString() {
  return 'InventoryState(status: $status, stockLevels: $stockLevels, selectedStockLevel: $selectedStockLevel, errorMessage: $errorMessage, warehouseId: $warehouseId, warehouses: $warehouses)';
}


}

/// @nodoc
abstract mixin class $InventoryStateCopyWith<$Res>  {
  factory $InventoryStateCopyWith(InventoryState value, $Res Function(InventoryState) _then) = _$InventoryStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<StockLevel> stockLevels, StockLevel? selectedStockLevel, String? errorMessage, String? warehouseId, Map<String, String> warehouses
});




}
/// @nodoc
class _$InventoryStateCopyWithImpl<$Res>
    implements $InventoryStateCopyWith<$Res> {
  _$InventoryStateCopyWithImpl(this._self, this._then);

  final InventoryState _self;
  final $Res Function(InventoryState) _then;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? stockLevels = null,Object? selectedStockLevel = freezed,Object? errorMessage = freezed,Object? warehouseId = freezed,Object? warehouses = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,stockLevels: null == stockLevels ? _self.stockLevels : stockLevels // ignore: cast_nullable_to_non_nullable
as List<StockLevel>,selectedStockLevel: freezed == selectedStockLevel ? _self.selectedStockLevel : selectedStockLevel // ignore: cast_nullable_to_non_nullable
as StockLevel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,warehouseId: freezed == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as String?,warehouses: null == warehouses ? _self.warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryState].
extension InventoryStatePatterns on InventoryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryState value)  $default,){
final _that = this;
switch (_that) {
case _InventoryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryState value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<StockLevel> stockLevels,  StockLevel? selectedStockLevel,  String? errorMessage,  String? warehouseId,  Map<String, String> warehouses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryState() when $default != null:
return $default(_that.status,_that.stockLevels,_that.selectedStockLevel,_that.errorMessage,_that.warehouseId,_that.warehouses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<StockLevel> stockLevels,  StockLevel? selectedStockLevel,  String? errorMessage,  String? warehouseId,  Map<String, String> warehouses)  $default,) {final _that = this;
switch (_that) {
case _InventoryState():
return $default(_that.status,_that.stockLevels,_that.selectedStockLevel,_that.errorMessage,_that.warehouseId,_that.warehouses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<StockLevel> stockLevels,  StockLevel? selectedStockLevel,  String? errorMessage,  String? warehouseId,  Map<String, String> warehouses)?  $default,) {final _that = this;
switch (_that) {
case _InventoryState() when $default != null:
return $default(_that.status,_that.stockLevels,_that.selectedStockLevel,_that.errorMessage,_that.warehouseId,_that.warehouses);case _:
  return null;

}
}

}

/// @nodoc


class _InventoryState extends InventoryState {
  const _InventoryState({this.status = StateStatus.initial, final  List<StockLevel> stockLevels = const [], this.selectedStockLevel, this.errorMessage, this.warehouseId, final  Map<String, String> warehouses = const {}}): _stockLevels = stockLevels,_warehouses = warehouses,super._();
  

@override@JsonKey() final  StateStatus status;
 final  List<StockLevel> _stockLevels;
@override@JsonKey() List<StockLevel> get stockLevels {
  if (_stockLevels is EqualUnmodifiableListView) return _stockLevels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stockLevels);
}

@override final  StockLevel? selectedStockLevel;
@override final  String? errorMessage;
@override final  String? warehouseId;
 final  Map<String, String> _warehouses;
@override@JsonKey() Map<String, String> get warehouses {
  if (_warehouses is EqualUnmodifiableMapView) return _warehouses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_warehouses);
}


/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryStateCopyWith<_InventoryState> get copyWith => __$InventoryStateCopyWithImpl<_InventoryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._stockLevels, _stockLevels)&&(identical(other.selectedStockLevel, selectedStockLevel) || other.selectedStockLevel == selectedStockLevel)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&const DeepCollectionEquality().equals(other._warehouses, _warehouses));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_stockLevels),selectedStockLevel,errorMessage,warehouseId,const DeepCollectionEquality().hash(_warehouses));

@override
String toString() {
  return 'InventoryState(status: $status, stockLevels: $stockLevels, selectedStockLevel: $selectedStockLevel, errorMessage: $errorMessage, warehouseId: $warehouseId, warehouses: $warehouses)';
}


}

/// @nodoc
abstract mixin class _$InventoryStateCopyWith<$Res> implements $InventoryStateCopyWith<$Res> {
  factory _$InventoryStateCopyWith(_InventoryState value, $Res Function(_InventoryState) _then) = __$InventoryStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<StockLevel> stockLevels, StockLevel? selectedStockLevel, String? errorMessage, String? warehouseId, Map<String, String> warehouses
});




}
/// @nodoc
class __$InventoryStateCopyWithImpl<$Res>
    implements _$InventoryStateCopyWith<$Res> {
  __$InventoryStateCopyWithImpl(this._self, this._then);

  final _InventoryState _self;
  final $Res Function(_InventoryState) _then;

/// Create a copy of InventoryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? stockLevels = null,Object? selectedStockLevel = freezed,Object? errorMessage = freezed,Object? warehouseId = freezed,Object? warehouses = null,}) {
  return _then(_InventoryState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,stockLevels: null == stockLevels ? _self._stockLevels : stockLevels // ignore: cast_nullable_to_non_nullable
as List<StockLevel>,selectedStockLevel: freezed == selectedStockLevel ? _self.selectedStockLevel : selectedStockLevel // ignore: cast_nullable_to_non_nullable
as StockLevel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,warehouseId: freezed == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as String?,warehouses: null == warehouses ? _self._warehouses : warehouses // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
