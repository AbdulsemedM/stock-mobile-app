// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceModel {

 String get id;@JsonKey(name: 'invoice_number') String get invoiceNumber;@JsonKey(name: 'customer_name') String get customerName; String get status;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'due_date') DateTime? get dueDate;
/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceModelCopyWith<InvoiceModel> get copyWith => _$InvoiceModelCopyWithImpl<InvoiceModel>(this as InvoiceModel, _$identity);

  /// Serializes this InvoiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,customerName,status,totalAmount,createdAt,dueDate);

@override
String toString() {
  return 'InvoiceModel(id: $id, invoiceNumber: $invoiceNumber, customerName: $customerName, status: $status, totalAmount: $totalAmount, createdAt: $createdAt, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class $InvoiceModelCopyWith<$Res>  {
  factory $InvoiceModelCopyWith(InvoiceModel value, $Res Function(InvoiceModel) _then) = _$InvoiceModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'invoice_number') String invoiceNumber,@JsonKey(name: 'customer_name') String customerName, String status,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'due_date') DateTime? dueDate
});




}
/// @nodoc
class _$InvoiceModelCopyWithImpl<$Res>
    implements $InvoiceModelCopyWith<$Res> {
  _$InvoiceModelCopyWithImpl(this._self, this._then);

  final InvoiceModel _self;
  final $Res Function(InvoiceModel) _then;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceNumber = null,Object? customerName = null,Object? status = null,Object? totalAmount = null,Object? createdAt = null,Object? dueDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceModel].
extension InvoiceModelPatterns on InvoiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceModel value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'due_date')  DateTime? dueDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.customerName,_that.status,_that.totalAmount,_that.createdAt,_that.dueDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'due_date')  DateTime? dueDate)  $default,) {final _that = this;
switch (_that) {
case _InvoiceModel():
return $default(_that.id,_that.invoiceNumber,_that.customerName,_that.status,_that.totalAmount,_that.createdAt,_that.dueDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'customer_name')  String customerName,  String status, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'due_date')  DateTime? dueDate)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceModel() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.customerName,_that.status,_that.totalAmount,_that.createdAt,_that.dueDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceModel extends InvoiceModel {
  const _InvoiceModel({required this.id, @JsonKey(name: 'invoice_number') required this.invoiceNumber, @JsonKey(name: 'customer_name') required this.customerName, required this.status, @JsonKey(name: 'total_amount') required this.totalAmount, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'due_date') this.dueDate}): super._();
  factory _InvoiceModel.fromJson(Map<String, dynamic> json) => _$InvoiceModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'invoice_number') final  String invoiceNumber;
@override@JsonKey(name: 'customer_name') final  String customerName;
@override final  String status;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceModelCopyWith<_InvoiceModel> get copyWith => __$InvoiceModelCopyWithImpl<_InvoiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,customerName,status,totalAmount,createdAt,dueDate);

@override
String toString() {
  return 'InvoiceModel(id: $id, invoiceNumber: $invoiceNumber, customerName: $customerName, status: $status, totalAmount: $totalAmount, createdAt: $createdAt, dueDate: $dueDate)';
}


}

/// @nodoc
abstract mixin class _$InvoiceModelCopyWith<$Res> implements $InvoiceModelCopyWith<$Res> {
  factory _$InvoiceModelCopyWith(_InvoiceModel value, $Res Function(_InvoiceModel) _then) = __$InvoiceModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'invoice_number') String invoiceNumber,@JsonKey(name: 'customer_name') String customerName, String status,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'due_date') DateTime? dueDate
});




}
/// @nodoc
class __$InvoiceModelCopyWithImpl<$Res>
    implements _$InvoiceModelCopyWith<$Res> {
  __$InvoiceModelCopyWithImpl(this._self, this._then);

  final _InvoiceModel _self;
  final $Res Function(_InvoiceModel) _then;

/// Create a copy of InvoiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceNumber = null,Object? customerName = null,Object? status = null,Object? totalAmount = null,Object? createdAt = null,Object? dueDate = freezed,}) {
  return _then(_InvoiceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
