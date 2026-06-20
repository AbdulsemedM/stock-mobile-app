// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PurchaseOrderLineModel {

 String get id;@JsonKey(name: 'product_id') String get productId;@JsonKey(name: 'product_name') String get productName; String get sku;@JsonKey(name: 'ordered_quantity') int get orderedQuantity;@JsonKey(name: 'received_quantity') int get receivedQuantity;
/// Create a copy of PurchaseOrderLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderLineModelCopyWith<PurchaseOrderLineModel> get copyWith => _$PurchaseOrderLineModelCopyWithImpl<PurchaseOrderLineModel>(this as PurchaseOrderLineModel, _$identity);

  /// Serializes this PurchaseOrderLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderLineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.orderedQuantity, orderedQuantity) || other.orderedQuantity == orderedQuantity)&&(identical(other.receivedQuantity, receivedQuantity) || other.receivedQuantity == receivedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,orderedQuantity,receivedQuantity);

@override
String toString() {
  return 'PurchaseOrderLineModel(id: $id, productId: $productId, productName: $productName, sku: $sku, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderLineModelCopyWith<$Res>  {
  factory $PurchaseOrderLineModelCopyWith(PurchaseOrderLineModel value, $Res Function(PurchaseOrderLineModel) _then) = _$PurchaseOrderLineModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'ordered_quantity') int orderedQuantity,@JsonKey(name: 'received_quantity') int receivedQuantity
});




}
/// @nodoc
class _$PurchaseOrderLineModelCopyWithImpl<$Res>
    implements $PurchaseOrderLineModelCopyWith<$Res> {
  _$PurchaseOrderLineModelCopyWithImpl(this._self, this._then);

  final PurchaseOrderLineModel _self;
  final $Res Function(PurchaseOrderLineModel) _then;

/// Create a copy of PurchaseOrderLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? orderedQuantity = null,Object? receivedQuantity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,orderedQuantity: null == orderedQuantity ? _self.orderedQuantity : orderedQuantity // ignore: cast_nullable_to_non_nullable
as int,receivedQuantity: null == receivedQuantity ? _self.receivedQuantity : receivedQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseOrderLineModel].
extension PurchaseOrderLineModelPatterns on PurchaseOrderLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseOrderLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseOrderLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseOrderLineModel value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseOrderLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderLineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'ordered_quantity')  int orderedQuantity, @JsonKey(name: 'received_quantity')  int receivedQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseOrderLineModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.orderedQuantity,_that.receivedQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'ordered_quantity')  int orderedQuantity, @JsonKey(name: 'received_quantity')  int receivedQuantity)  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderLineModel():
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.orderedQuantity,_that.receivedQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'product_id')  String productId, @JsonKey(name: 'product_name')  String productName,  String sku, @JsonKey(name: 'ordered_quantity')  int orderedQuantity, @JsonKey(name: 'received_quantity')  int receivedQuantity)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderLineModel() when $default != null:
return $default(_that.id,_that.productId,_that.productName,_that.sku,_that.orderedQuantity,_that.receivedQuantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseOrderLineModel extends PurchaseOrderLineModel {
  const _PurchaseOrderLineModel({required this.id, @JsonKey(name: 'product_id') required this.productId, @JsonKey(name: 'product_name') required this.productName, required this.sku, @JsonKey(name: 'ordered_quantity') required this.orderedQuantity, @JsonKey(name: 'received_quantity') required this.receivedQuantity}): super._();
  factory _PurchaseOrderLineModel.fromJson(Map<String, dynamic> json) => _$PurchaseOrderLineModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'product_id') final  String productId;
@override@JsonKey(name: 'product_name') final  String productName;
@override final  String sku;
@override@JsonKey(name: 'ordered_quantity') final  int orderedQuantity;
@override@JsonKey(name: 'received_quantity') final  int receivedQuantity;

/// Create a copy of PurchaseOrderLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseOrderLineModelCopyWith<_PurchaseOrderLineModel> get copyWith => __$PurchaseOrderLineModelCopyWithImpl<_PurchaseOrderLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseOrderLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseOrderLineModel&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.orderedQuantity, orderedQuantity) || other.orderedQuantity == orderedQuantity)&&(identical(other.receivedQuantity, receivedQuantity) || other.receivedQuantity == receivedQuantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,productId,productName,sku,orderedQuantity,receivedQuantity);

@override
String toString() {
  return 'PurchaseOrderLineModel(id: $id, productId: $productId, productName: $productName, sku: $sku, orderedQuantity: $orderedQuantity, receivedQuantity: $receivedQuantity)';
}


}

/// @nodoc
abstract mixin class _$PurchaseOrderLineModelCopyWith<$Res> implements $PurchaseOrderLineModelCopyWith<$Res> {
  factory _$PurchaseOrderLineModelCopyWith(_PurchaseOrderLineModel value, $Res Function(_PurchaseOrderLineModel) _then) = __$PurchaseOrderLineModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'product_id') String productId,@JsonKey(name: 'product_name') String productName, String sku,@JsonKey(name: 'ordered_quantity') int orderedQuantity,@JsonKey(name: 'received_quantity') int receivedQuantity
});




}
/// @nodoc
class __$PurchaseOrderLineModelCopyWithImpl<$Res>
    implements _$PurchaseOrderLineModelCopyWith<$Res> {
  __$PurchaseOrderLineModelCopyWithImpl(this._self, this._then);

  final _PurchaseOrderLineModel _self;
  final $Res Function(_PurchaseOrderLineModel) _then;

/// Create a copy of PurchaseOrderLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productId = null,Object? productName = null,Object? sku = null,Object? orderedQuantity = null,Object? receivedQuantity = null,}) {
  return _then(_PurchaseOrderLineModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,orderedQuantity: null == orderedQuantity ? _self.orderedQuantity : orderedQuantity // ignore: cast_nullable_to_non_nullable
as int,receivedQuantity: null == receivedQuantity ? _self.receivedQuantity : receivedQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PurchaseOrderModel {

 String get id;@JsonKey(name: 'order_number') String get orderNumber;@JsonKey(name: 'supplier_name') String get supplierName; String get status;@JsonKey(name: 'order_date') DateTime get orderDate;@JsonKey(name: 'expected_date') DateTime? get expectedDate; String? get notes;@JsonKey(name: 'total_amount') double? get totalAmount; List<PurchaseOrderLineModel> get lines;
/// Create a copy of PurchaseOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderModelCopyWith<PurchaseOrderModel> get copyWith => _$PurchaseOrderModelCopyWithImpl<PurchaseOrderModel>(this as PurchaseOrderModel, _$identity);

  /// Serializes this PurchaseOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.supplierName, supplierName) || other.supplierName == supplierName)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.expectedDate, expectedDate) || other.expectedDate == expectedDate)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other.lines, lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,supplierName,status,orderDate,expectedDate,notes,totalAmount,const DeepCollectionEquality().hash(lines));

@override
String toString() {
  return 'PurchaseOrderModel(id: $id, orderNumber: $orderNumber, supplierName: $supplierName, status: $status, orderDate: $orderDate, expectedDate: $expectedDate, notes: $notes, totalAmount: $totalAmount, lines: $lines)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderModelCopyWith<$Res>  {
  factory $PurchaseOrderModelCopyWith(PurchaseOrderModel value, $Res Function(PurchaseOrderModel) _then) = _$PurchaseOrderModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'supplier_name') String supplierName, String status,@JsonKey(name: 'order_date') DateTime orderDate,@JsonKey(name: 'expected_date') DateTime? expectedDate, String? notes,@JsonKey(name: 'total_amount') double? totalAmount, List<PurchaseOrderLineModel> lines
});




}
/// @nodoc
class _$PurchaseOrderModelCopyWithImpl<$Res>
    implements $PurchaseOrderModelCopyWith<$Res> {
  _$PurchaseOrderModelCopyWithImpl(this._self, this._then);

  final PurchaseOrderModel _self;
  final $Res Function(PurchaseOrderModel) _then;

/// Create a copy of PurchaseOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNumber = null,Object? supplierName = null,Object? status = null,Object? orderDate = null,Object? expectedDate = freezed,Object? notes = freezed,Object? totalAmount = freezed,Object? lines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,supplierName: null == supplierName ? _self.supplierName : supplierName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime,expectedDate: freezed == expectedDate ? _self.expectedDate : expectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseOrderLineModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseOrderModel].
extension PurchaseOrderModelPatterns on PurchaseOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'supplier_name')  String supplierName,  String status, @JsonKey(name: 'order_date')  DateTime orderDate, @JsonKey(name: 'expected_date')  DateTime? expectedDate,  String? notes, @JsonKey(name: 'total_amount')  double? totalAmount,  List<PurchaseOrderLineModel> lines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseOrderModel() when $default != null:
return $default(_that.id,_that.orderNumber,_that.supplierName,_that.status,_that.orderDate,_that.expectedDate,_that.notes,_that.totalAmount,_that.lines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'supplier_name')  String supplierName,  String status, @JsonKey(name: 'order_date')  DateTime orderDate, @JsonKey(name: 'expected_date')  DateTime? expectedDate,  String? notes, @JsonKey(name: 'total_amount')  double? totalAmount,  List<PurchaseOrderLineModel> lines)  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderModel():
return $default(_that.id,_that.orderNumber,_that.supplierName,_that.status,_that.orderDate,_that.expectedDate,_that.notes,_that.totalAmount,_that.lines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'order_number')  String orderNumber, @JsonKey(name: 'supplier_name')  String supplierName,  String status, @JsonKey(name: 'order_date')  DateTime orderDate, @JsonKey(name: 'expected_date')  DateTime? expectedDate,  String? notes, @JsonKey(name: 'total_amount')  double? totalAmount,  List<PurchaseOrderLineModel> lines)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderModel() when $default != null:
return $default(_that.id,_that.orderNumber,_that.supplierName,_that.status,_that.orderDate,_that.expectedDate,_that.notes,_that.totalAmount,_that.lines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PurchaseOrderModel extends PurchaseOrderModel {
  const _PurchaseOrderModel({required this.id, @JsonKey(name: 'order_number') required this.orderNumber, @JsonKey(name: 'supplier_name') required this.supplierName, required this.status, @JsonKey(name: 'order_date') required this.orderDate, @JsonKey(name: 'expected_date') this.expectedDate, this.notes, @JsonKey(name: 'total_amount') this.totalAmount, final  List<PurchaseOrderLineModel> lines = const []}): _lines = lines,super._();
  factory _PurchaseOrderModel.fromJson(Map<String, dynamic> json) => _$PurchaseOrderModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'order_number') final  String orderNumber;
@override@JsonKey(name: 'supplier_name') final  String supplierName;
@override final  String status;
@override@JsonKey(name: 'order_date') final  DateTime orderDate;
@override@JsonKey(name: 'expected_date') final  DateTime? expectedDate;
@override final  String? notes;
@override@JsonKey(name: 'total_amount') final  double? totalAmount;
 final  List<PurchaseOrderLineModel> _lines;
@override@JsonKey() List<PurchaseOrderLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}


/// Create a copy of PurchaseOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseOrderModelCopyWith<_PurchaseOrderModel> get copyWith => __$PurchaseOrderModelCopyWithImpl<_PurchaseOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PurchaseOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNumber, orderNumber) || other.orderNumber == orderNumber)&&(identical(other.supplierName, supplierName) || other.supplierName == supplierName)&&(identical(other.status, status) || other.status == status)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.expectedDate, expectedDate) || other.expectedDate == expectedDate)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&const DeepCollectionEquality().equals(other._lines, _lines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNumber,supplierName,status,orderDate,expectedDate,notes,totalAmount,const DeepCollectionEquality().hash(_lines));

@override
String toString() {
  return 'PurchaseOrderModel(id: $id, orderNumber: $orderNumber, supplierName: $supplierName, status: $status, orderDate: $orderDate, expectedDate: $expectedDate, notes: $notes, totalAmount: $totalAmount, lines: $lines)';
}


}

/// @nodoc
abstract mixin class _$PurchaseOrderModelCopyWith<$Res> implements $PurchaseOrderModelCopyWith<$Res> {
  factory _$PurchaseOrderModelCopyWith(_PurchaseOrderModel value, $Res Function(_PurchaseOrderModel) _then) = __$PurchaseOrderModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'order_number') String orderNumber,@JsonKey(name: 'supplier_name') String supplierName, String status,@JsonKey(name: 'order_date') DateTime orderDate,@JsonKey(name: 'expected_date') DateTime? expectedDate, String? notes,@JsonKey(name: 'total_amount') double? totalAmount, List<PurchaseOrderLineModel> lines
});




}
/// @nodoc
class __$PurchaseOrderModelCopyWithImpl<$Res>
    implements _$PurchaseOrderModelCopyWith<$Res> {
  __$PurchaseOrderModelCopyWithImpl(this._self, this._then);

  final _PurchaseOrderModel _self;
  final $Res Function(_PurchaseOrderModel) _then;

/// Create a copy of PurchaseOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNumber = null,Object? supplierName = null,Object? status = null,Object? orderDate = null,Object? expectedDate = freezed,Object? notes = freezed,Object? totalAmount = freezed,Object? lines = null,}) {
  return _then(_PurchaseOrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderNumber: null == orderNumber ? _self.orderNumber : orderNumber // ignore: cast_nullable_to_non_nullable
as String,supplierName: null == supplierName ? _self.supplierName : supplierName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,orderDate: null == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime,expectedDate: freezed == expectedDate ? _self.expectedDate : expectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,totalAmount: freezed == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double?,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<PurchaseOrderLineModel>,
  ));
}


}

// dart format on
