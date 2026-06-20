// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickTaskModel {

 String get id;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product_name') String get productName; String get sku;@JsonKey(name: 'quantity_required') int get quantityRequired;@JsonKey(name: 'quantity_picked') int get quantityPicked; String get status;@JsonKey(name: 'bin_code') String? get binCode;
/// Create a copy of PickTaskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickTaskModelCopyWith<PickTaskModel> get copyWith => _$PickTaskModelCopyWithImpl<PickTaskModel>(this as PickTaskModel, _$identity);

  /// Serializes this PickTaskModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickTaskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.quantityRequired, quantityRequired) || other.quantityRequired == quantityRequired)&&(identical(other.quantityPicked, quantityPicked) || other.quantityPicked == quantityPicked)&&(identical(other.status, status) || other.status == status)&&(identical(other.binCode, binCode) || other.binCode == binCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,quantityRequired,quantityPicked,status,binCode);

@override
String toString() {
  return 'PickTaskModel(id: $id, productId: $productId, productName: $productName, sku: $sku, quantityRequired: $quantityRequired, quantityPicked: $quantityPicked, status: $status, binCode: $binCode)';
}


}

/// @nodoc
abstract mixin class $PickTaskModelCopyWith<$Res>  {
  factory $PickTaskModelCopyWith(PickTaskModel value, $Res Function(PickTaskModel) _then) = _$PickTaskModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'quantity_required') int quantityRequired,@JsonKey(name: 'quantity_picked') int quantityPicked, String status,@JsonKey(name: 'bin_code') String? binCode
});




}
/// @nodoc
class _$PickTaskModelCopyWithImpl<$Res>
    implements $PickTaskModelCopyWith<$Res> {
  _$PickTaskModelCopyWithImpl(this._self, this._then);

  final PickTaskModel _self;
  final $Res Function(PickTaskModel) _then;

/// Create a copy of PickTaskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? quantityRequired = null,Object? quantityPicked = null,Object? status = null,Object? binCode = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,quantityRequired: null == quantityRequired ? _self.quantityRequired : quantityRequired // ignore: cast_nullable_to_non_nullable
as int,quantityPicked: null == quantityPicked ? _self.quantityPicked : quantityPicked // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,binCode: freezed == binCode ? _self.binCode : binCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickTaskModel].
extension PickTaskModelPatterns on PickTaskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickTaskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickTaskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickTaskModel value)  $default,){
final _that = this;
switch (_that) {
case _PickTaskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickTaskModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickTaskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'quantity_required')  int quantityRequired, @JsonKey(name: 'quantity_picked')  int quantityPicked,  String status, @JsonKey(name: 'bin_code')  String? binCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickTaskModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.quantityRequired,_that.quantityPicked,_that.status,_that.binCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'quantity_required')  int quantityRequired, @JsonKey(name: 'quantity_picked')  int quantityPicked,  String status, @JsonKey(name: 'bin_code')  String? binCode)  $default,) {final _that = this;
switch (_that) {
case _PickTaskModel():
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.quantityRequired,_that.quantityPicked,_that.status,_that.binCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'quantity_required')  int quantityRequired, @JsonKey(name: 'quantity_picked')  int quantityPicked,  String status, @JsonKey(name: 'bin_code')  String? binCode)?  $default,) {final _that = this;
switch (_that) {
case _PickTaskModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.quantityRequired,_that.quantityPicked,_that.status,_that.binCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickTaskModel extends PickTaskModel {
  const _PickTaskModel({required this.id, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product_name') required this.productName, required this.sku, @JsonKey(name: 'quantity_required') required this.quantityRequired, @JsonKey(name: 'quantity_picked') required this.quantityPicked, required this.status, @JsonKey(name: 'bin_code') this.binCode}): super._();
  factory _PickTaskModel.fromJson(Map<String, dynamic> json) => _$PickTaskModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product_name') final  String productName;
@override final  String sku;
@override@JsonKey(name: 'quantity_required') final  int quantityRequired;
@override@JsonKey(name: 'quantity_picked') final  int quantityPicked;
@override final  String status;
@override@JsonKey(name: 'bin_code') final  String? binCode;

/// Create a copy of PickTaskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickTaskModelCopyWith<_PickTaskModel> get copyWith => __$PickTaskModelCopyWithImpl<_PickTaskModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickTaskModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickTaskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.quantityRequired, quantityRequired) || other.quantityRequired == quantityRequired)&&(identical(other.quantityPicked, quantityPicked) || other.quantityPicked == quantityPicked)&&(identical(other.status, status) || other.status == status)&&(identical(other.binCode, binCode) || other.binCode == binCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,quantityRequired,quantityPicked,status,binCode);

@override
String toString() {
  return 'PickTaskModel(id: $id, productId: $productId, productName: $productName, sku: $sku, quantityRequired: $quantityRequired, quantityPicked: $quantityPicked, status: $status, binCode: $binCode)';
}


}

/// @nodoc
abstract mixin class _$PickTaskModelCopyWith<$Res> implements $PickTaskModelCopyWith<$Res> {
  factory _$PickTaskModelCopyWith(_PickTaskModel value, $Res Function(_PickTaskModel) _then) = __$PickTaskModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'quantity_required') int quantityRequired,@JsonKey(name: 'quantity_picked') int quantityPicked, String status,@JsonKey(name: 'bin_code') String? binCode
});




}
/// @nodoc
class __$PickTaskModelCopyWithImpl<$Res>
    implements _$PickTaskModelCopyWith<$Res> {
  __$PickTaskModelCopyWithImpl(this._self, this._then);

  final _PickTaskModel _self;
  final $Res Function(_PickTaskModel) _then;

/// Create a copy of PickTaskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? quantityRequired = null,Object? quantityPicked = null,Object? status = null,Object? binCode = freezed,}) {
  return _then(_PickTaskModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,quantityRequired: null == quantityRequired ? _self.quantityRequired : quantityRequired // ignore: cast_nullable_to_non_nullable
as int,quantityPicked: null == quantityPicked ? _self.quantityPicked : quantityPicked // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,binCode: freezed == binCode ? _self.binCode : binCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
