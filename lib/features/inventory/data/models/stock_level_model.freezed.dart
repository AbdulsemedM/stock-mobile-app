// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_level_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockLevelModel {

 String get id;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product_name') String get productName; String get sku;@JsonKey(name: 'warehouse_id') String get warehouseId;@JsonKey(name: 'warehouse_name') String get warehouseName;@JsonKey(name: 'bin_id') String get binId;@JsonKey(name: 'bin_code') String get binCode; int get quantity;@JsonKey(name: 'reserved_quantity') int get reservedQuantity;
/// Create a copy of StockLevelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLevelModelCopyWith<StockLevelModel> get copyWith => _$StockLevelModelCopyWithImpl<StockLevelModel>(this as StockLevelModel, _$identity);

  /// Serializes this StockLevelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.warehouseName, warehouseName) || other.warehouseName == warehouseName)&&(identical(other.binId, binId) || other.binId == binId)&&(identical(other.binCode, binCode) || other.binCode == binCode)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.reservedQuantity, reservedQuantity) || other.reservedQuantity == reservedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,warehouseId,warehouseName,binId,binCode,quantity,reservedQuantity);

@override
String toString() {
  return 'StockLevelModel(id: $id, productId: $productId, productName: $productName, sku: $sku, warehouseId: $warehouseId, warehouseName: $warehouseName, binId: $binId, binCode: $binCode, quantity: $quantity, reservedQuantity: $reservedQuantity)';
}


}

/// @nodoc
abstract mixin class $StockLevelModelCopyWith<$Res>  {
  factory $StockLevelModelCopyWith(StockLevelModel value, $Res Function(StockLevelModel) _then) = _$StockLevelModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'warehouse_id') String warehouseId,@JsonKey(name: 'warehouse_name') String warehouseName,@JsonKey(name: 'bin_id') String binId,@JsonKey(name: 'bin_code') String binCode, int quantity,@JsonKey(name: 'reserved_quantity') int reservedQuantity
});




}
/// @nodoc
class _$StockLevelModelCopyWithImpl<$Res>
    implements $StockLevelModelCopyWith<$Res> {
  _$StockLevelModelCopyWithImpl(this._self, this._then);

  final StockLevelModel _self;
  final $Res Function(StockLevelModel) _then;

/// Create a copy of StockLevelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? warehouseId = null,Object? warehouseName = null,Object? binId = null,Object? binCode = null,Object? quantity = null,Object? reservedQuantity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as String,warehouseName: null == warehouseName ? _self.warehouseName : warehouseName // ignore: cast_nullable_to_non_nullable
as String,binId: null == binId ? _self.binId : binId // ignore: cast_nullable_to_non_nullable
as String,binCode: null == binCode ? _self.binCode : binCode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,reservedQuantity: null == reservedQuantity ? _self.reservedQuantity : reservedQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLevelModel].
extension StockLevelModelPatterns on StockLevelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLevelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLevelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLevelModel value)  $default,){
final _that = this;
switch (_that) {
case _StockLevelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLevelModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockLevelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'warehouse_id')  String warehouseId, @JsonKey(name: 'warehouse_name')  String warehouseName, @JsonKey(name: 'bin_id')  String binId, @JsonKey(name: 'bin_code')  String binCode,  int quantity, @JsonKey(name: 'reserved_quantity')  int reservedQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLevelModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.warehouseId,_that.warehouseName,_that.binId,_that.binCode,_that.quantity,_that.reservedQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'warehouse_id')  String warehouseId, @JsonKey(name: 'warehouse_name')  String warehouseName, @JsonKey(name: 'bin_id')  String binId, @JsonKey(name: 'bin_code')  String binCode,  int quantity, @JsonKey(name: 'reserved_quantity')  int reservedQuantity)  $default,) {final _that = this;
switch (_that) {
case _StockLevelModel():
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.warehouseId,_that.warehouseName,_that.binId,_that.binCode,_that.quantity,_that.reservedQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'warehouse_id')  String warehouseId, @JsonKey(name: 'warehouse_name')  String warehouseName, @JsonKey(name: 'bin_id')  String binId, @JsonKey(name: 'bin_code')  String binCode,  int quantity, @JsonKey(name: 'reserved_quantity')  int reservedQuantity)?  $default,) {final _that = this;
switch (_that) {
case _StockLevelModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.warehouseId,_that.warehouseName,_that.binId,_that.binCode,_that.quantity,_that.reservedQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockLevelModel extends StockLevelModel {
  const _StockLevelModel({required this.id, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product_name') required this.productName, required this.sku, @JsonKey(name: 'warehouse_id') required this.warehouseId, @JsonKey(name: 'warehouse_name') required this.warehouseName, @JsonKey(name: 'bin_id') required this.binId, @JsonKey(name: 'bin_code') required this.binCode, required this.quantity, @JsonKey(name: 'reserved_quantity') required this.reservedQuantity}): super._();
  factory _StockLevelModel.fromJson(Map<String, dynamic> json) => _$StockLevelModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product_name') final  String productName;
@override final  String sku;
@override@JsonKey(name: 'warehouse_id') final  String warehouseId;
@override@JsonKey(name: 'warehouse_name') final  String warehouseName;
@override@JsonKey(name: 'bin_id') final  String binId;
@override@JsonKey(name: 'bin_code') final  String binCode;
@override final  int quantity;
@override@JsonKey(name: 'reserved_quantity') final  int reservedQuantity;

/// Create a copy of StockLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLevelModelCopyWith<_StockLevelModel> get copyWith => __$StockLevelModelCopyWithImpl<_StockLevelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLevelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLevelModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.warehouseId, warehouseId) || other.warehouseId == warehouseId)&&(identical(other.warehouseName, warehouseName) || other.warehouseName == warehouseName)&&(identical(other.binId, binId) || other.binId == binId)&&(identical(other.binCode, binCode) || other.binCode == binCode)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.reservedQuantity, reservedQuantity) || other.reservedQuantity == reservedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,warehouseId,warehouseName,binId,binCode,quantity,reservedQuantity);

@override
String toString() {
  return 'StockLevelModel(id: $id, productId: $productId, productName: $productName, sku: $sku, warehouseId: $warehouseId, warehouseName: $warehouseName, binId: $binId, binCode: $binCode, quantity: $quantity, reservedQuantity: $reservedQuantity)';
}


}

/// @nodoc
abstract mixin class _$StockLevelModelCopyWith<$Res> implements $StockLevelModelCopyWith<$Res> {
  factory _$StockLevelModelCopyWith(_StockLevelModel value, $Res Function(_StockLevelModel) _then) = __$StockLevelModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'warehouse_id') String warehouseId,@JsonKey(name: 'warehouse_name') String warehouseName,@JsonKey(name: 'bin_id') String binId,@JsonKey(name: 'bin_code') String binCode, int quantity,@JsonKey(name: 'reserved_quantity') int reservedQuantity
});




}
/// @nodoc
class __$StockLevelModelCopyWithImpl<$Res>
    implements _$StockLevelModelCopyWith<$Res> {
  __$StockLevelModelCopyWithImpl(this._self, this._then);

  final _StockLevelModel _self;
  final $Res Function(_StockLevelModel) _then;

/// Create a copy of StockLevelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? warehouseId = null,Object? warehouseName = null,Object? binId = null,Object? binCode = null,Object? quantity = null,Object? reservedQuantity = null,}) {
  return _then(_StockLevelModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,warehouseId: null == warehouseId ? _self.warehouseId : warehouseId // ignore: cast_nullable_to_non_nullable
as String,warehouseName: null == warehouseName ? _self.warehouseName : warehouseName // ignore: cast_nullable_to_non_nullable
as String,binId: null == binId ? _self.binId : binId // ignore: cast_nullable_to_non_nullable
as String,binCode: null == binCode ? _self.binCode : binCode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,reservedQuantity: null == reservedQuantity ? _self.reservedQuantity : reservedQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
