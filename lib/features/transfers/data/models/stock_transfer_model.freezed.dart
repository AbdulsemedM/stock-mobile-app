// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_transfer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockTransferModel {

 String get id;@JsonKey(name: 'transfer_number') String get transferNumber;@JsonKey(name: 'from_warehouse_name') String get fromWarehouseName;@JsonKey(name: 'to_warehouse_name') String get toWarehouseName; String get status;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of StockTransferModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockTransferModelCopyWith<StockTransferModel> get copyWith => _$StockTransferModelCopyWithImpl<StockTransferModel>(this as StockTransferModel, _$identity);

  /// Serializes this StockTransferModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockTransferModel&&(identical(other.id, id) || other.id == id)&&(identical(other.transferNumber, transferNumber) || other.transferNumber == transferNumber)&&(identical(other.fromWarehouseName, fromWarehouseName) || other.fromWarehouseName == fromWarehouseName)&&(identical(other.toWarehouseName, toWarehouseName) || other.toWarehouseName == toWarehouseName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transferNumber,fromWarehouseName,toWarehouseName,status,createdAt);

@override
String toString() {
  return 'StockTransferModel(id: $id, transferNumber: $transferNumber, fromWarehouseName: $fromWarehouseName, toWarehouseName: $toWarehouseName, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $StockTransferModelCopyWith<$Res>  {
  factory $StockTransferModelCopyWith(StockTransferModel value, $Res Function(StockTransferModel) _then) = _$StockTransferModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'transfer_number') String transferNumber,@JsonKey(name: 'from_warehouse_name') String fromWarehouseName,@JsonKey(name: 'to_warehouse_name') String toWarehouseName, String status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$StockTransferModelCopyWithImpl<$Res>
    implements $StockTransferModelCopyWith<$Res> {
  _$StockTransferModelCopyWithImpl(this._self, this._then);

  final StockTransferModel _self;
  final $Res Function(StockTransferModel) _then;

/// Create a copy of StockTransferModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? transferNumber = null,Object? fromWarehouseName = null,Object? toWarehouseName = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,transferNumber: null == transferNumber ? _self.transferNumber : transferNumber // ignore: cast_nullable_to_non_nullable
as String,fromWarehouseName: null == fromWarehouseName ? _self.fromWarehouseName : fromWarehouseName // ignore: cast_nullable_to_non_nullable
as String,toWarehouseName: null == toWarehouseName ? _self.toWarehouseName : toWarehouseName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [StockTransferModel].
extension StockTransferModelPatterns on StockTransferModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockTransferModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockTransferModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockTransferModel value)  $default,){
final _that = this;
switch (_that) {
case _StockTransferModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockTransferModel value)?  $default,){
final _that = this;
switch (_that) {
case _StockTransferModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'transfer_number')  String transferNumber, @JsonKey(name: 'from_warehouse_name')  String fromWarehouseName, @JsonKey(name: 'to_warehouse_name')  String toWarehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockTransferModel() when $default != null:
return $default(_that.id,_that.transferNumber,_that.fromWarehouseName,_that.toWarehouseName,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'transfer_number')  String transferNumber, @JsonKey(name: 'from_warehouse_name')  String fromWarehouseName, @JsonKey(name: 'to_warehouse_name')  String toWarehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _StockTransferModel():
return $default(_that.id,_that.transferNumber,_that.fromWarehouseName,_that.toWarehouseName,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'transfer_number')  String transferNumber, @JsonKey(name: 'from_warehouse_name')  String fromWarehouseName, @JsonKey(name: 'to_warehouse_name')  String toWarehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _StockTransferModel() when $default != null:
return $default(_that.id,_that.transferNumber,_that.fromWarehouseName,_that.toWarehouseName,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockTransferModel extends StockTransferModel {
  const _StockTransferModel({required this.id, @JsonKey(name: 'transfer_number') required this.transferNumber, @JsonKey(name: 'from_warehouse_name') required this.fromWarehouseName, @JsonKey(name: 'to_warehouse_name') required this.toWarehouseName, required this.status, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _StockTransferModel.fromJson(Map<String, dynamic> json) => _$StockTransferModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'transfer_number') final  String transferNumber;
@override@JsonKey(name: 'from_warehouse_name') final  String fromWarehouseName;
@override@JsonKey(name: 'to_warehouse_name') final  String toWarehouseName;
@override final  String status;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of StockTransferModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockTransferModelCopyWith<_StockTransferModel> get copyWith => __$StockTransferModelCopyWithImpl<_StockTransferModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockTransferModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockTransferModel&&(identical(other.id, id) || other.id == id)&&(identical(other.transferNumber, transferNumber) || other.transferNumber == transferNumber)&&(identical(other.fromWarehouseName, fromWarehouseName) || other.fromWarehouseName == fromWarehouseName)&&(identical(other.toWarehouseName, toWarehouseName) || other.toWarehouseName == toWarehouseName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,transferNumber,fromWarehouseName,toWarehouseName,status,createdAt);

@override
String toString() {
  return 'StockTransferModel(id: $id, transferNumber: $transferNumber, fromWarehouseName: $fromWarehouseName, toWarehouseName: $toWarehouseName, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$StockTransferModelCopyWith<$Res> implements $StockTransferModelCopyWith<$Res> {
  factory _$StockTransferModelCopyWith(_StockTransferModel value, $Res Function(_StockTransferModel) _then) = __$StockTransferModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'transfer_number') String transferNumber,@JsonKey(name: 'from_warehouse_name') String fromWarehouseName,@JsonKey(name: 'to_warehouse_name') String toWarehouseName, String status,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$StockTransferModelCopyWithImpl<$Res>
    implements _$StockTransferModelCopyWith<$Res> {
  __$StockTransferModelCopyWithImpl(this._self, this._then);

  final _StockTransferModel _self;
  final $Res Function(_StockTransferModel) _then;

/// Create a copy of StockTransferModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? transferNumber = null,Object? fromWarehouseName = null,Object? toWarehouseName = null,Object? status = null,Object? createdAt = null,}) {
  return _then(_StockTransferModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,transferNumber: null == transferNumber ? _self.transferNumber : transferNumber // ignore: cast_nullable_to_non_nullable
as String,fromWarehouseName: null == fromWarehouseName ? _self.fromWarehouseName : fromWarehouseName // ignore: cast_nullable_to_non_nullable
as String,toWarehouseName: null == toWarehouseName ? _self.toWarehouseName : toWarehouseName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
