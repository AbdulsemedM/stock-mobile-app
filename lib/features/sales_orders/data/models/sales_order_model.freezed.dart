// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesOrderModel {

 String get id;@JsonKey(name: 'so_number') String get soNumber;@JsonKey(name: 'customer_name') String get customerName; String get status;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'ship_date') DateTime? get shipDate;@JsonKey(name: 'total_amount') double? get totalAmount;
/// Create a copy of SalesOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesOrderModelCopyWith<SalesOrderModel> get copyWith => _$SalesOrderModelCopyWithImpl<SalesOrderModel>(this as SalesOrderModel, _$identity);

  /// Serializes this SalesOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.soNumber, soNumber) || other.soNumber == soNumber)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.shipDate, shipDate) || other.shipDate == shipDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,soNumber,customerName,status,createdAt,shipDate,totalAmount);

@override
String toString() {
  return 'SalesOrderModel(id: $id, soNumber: $soNumber, customerName: $customerName, status: $status, createdAt: $createdAt, shipDate: $shipDate, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $SalesOrderModelCopyWith<$Res>  {
  factory $SalesOrderModelCopyWith(SalesOrderModel value, $Res Function(SalesOrderModel) _then) = _$SalesOrderModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'so_number') String soNumber,@JsonKey(name: 'customer_name') String customerName, String status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'ship_date') DateTime? shipDate,@JsonKey(name: 'total_amount') double? totalAmount
});




}
/// @nodoc
class _$SalesOrderModelCopyWithImpl<$Res>
    implements $SalesOrderModelCopyWith<$Res> {
  _$SalesOrderModelCopyWithImpl(this._self, this._then);

  final SalesOrderModel _self;
  final $Res Function(SalesOrderModel) _then;

/// Create a copy of SalesOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? soNumber = null,Object? customerName = null,Object? status = null,Object? createdAt = null,Object? shipDate = freezed,Object? totalAmount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,soNumber: null == soNumber ? _self.soNumber : soNumber // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,shipDate: freezed == shipDate ? _self.shipDate : shipDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesOrderModel].
extension SalesOrderModelPatterns on SalesOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _SalesOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _SalesOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'so_number')  String soNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'ship_date')  DateTime? shipDate, @JsonKey(name: 'total_amount')  double? totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesOrderModel() when $default != null:
return $default(_that.id,_that.soNumber,_that.customerName,_that.status,_that.createdAt,_that.shipDate,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'so_number')  String soNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'ship_date')  DateTime? shipDate, @JsonKey(name: 'total_amount')  double? totalAmount)  $default,) {final _that = this;
switch (_that) {
case _SalesOrderModel():
return $default(_that.id,_that.soNumber,_that.customerName,_that.status,_that.createdAt,_that.shipDate,_that.totalAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'so_number')  String soNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'ship_date')  DateTime? shipDate, @JsonKey(name: 'total_amount')  double? totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _SalesOrderModel() when $default != null:
return $default(_that.id,_that.soNumber,_that.customerName,_that.status,_that.createdAt,_that.shipDate,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesOrderModel extends SalesOrderModel {
  const _SalesOrderModel({required this.id, @JsonKey(name: 'so_number') required this.soNumber, @JsonKey(name: 'customer_name') required this.customerName, required this.status, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'ship_date') this.shipDate, @JsonKey(name: 'total_amount') this.totalAmount}): super._();
  factory _SalesOrderModel.fromJson(Map<String, dynamic> json) => _$SalesOrderModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'so_number') final  String soNumber;
@override@JsonKey(name: 'customer_name') final  String customerName;
@override final  String status;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'ship_date') final  DateTime? shipDate;
@override@JsonKey(name: 'total_amount') final  double? totalAmount;

/// Create a copy of SalesOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesOrderModelCopyWith<_SalesOrderModel> get copyWith => __$SalesOrderModelCopyWithImpl<_SalesOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.soNumber, soNumber) || other.soNumber == soNumber)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.shipDate, shipDate) || other.shipDate == shipDate)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,soNumber,customerName,status,createdAt,shipDate,totalAmount);

@override
String toString() {
  return 'SalesOrderModel(id: $id, soNumber: $soNumber, customerName: $customerName, status: $status, createdAt: $createdAt, shipDate: $shipDate, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$SalesOrderModelCopyWith<$Res> implements $SalesOrderModelCopyWith<$Res> {
  factory _$SalesOrderModelCopyWith(_SalesOrderModel value, $Res Function(_SalesOrderModel) _then) = __$SalesOrderModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'so_number') String soNumber,@JsonKey(name: 'customer_name') String customerName, String status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'ship_date') DateTime? shipDate,@JsonKey(name: 'total_amount') double? totalAmount
});




}
/// @nodoc
class __$SalesOrderModelCopyWithImpl<$Res>
    implements _$SalesOrderModelCopyWith<$Res> {
  __$SalesOrderModelCopyWithImpl(this._self, this._then);

  final _SalesOrderModel _self;
  final $Res Function(_SalesOrderModel) _then;

/// Create a copy of SalesOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? soNumber = null,Object? customerName = null,Object? status = null,Object? createdAt = null,Object? shipDate = freezed,Object? totalAmount = freezed,}) {
  return _then(_SalesOrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,soNumber: null == soNumber ? _self.soNumber : soNumber // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,shipDate: freezed == shipDate ? _self.shipDate : shipDate // ignore: cast_nullable_to_non_nullable
as DateTime?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
