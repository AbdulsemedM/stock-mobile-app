// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchaseOrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseOrderEvent()';
}


}

/// @nodoc
class $PurchaseOrderEventCopyWith<$Res>  {
$PurchaseOrderEventCopyWith(PurchaseOrderEvent _, $Res Function(PurchaseOrderEvent) __);
}


/// Adds pattern-matching-related methods to [PurchaseOrderEvent].
extension PurchaseOrderEventPatterns on PurchaseOrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PurchaseOrderLoadRequested value)?  loadRequested,TResult Function( PurchaseOrderDetailRequested value)?  detailRequested,TResult Function( PurchaseOrderReceiveScanned value)?  receiveScanned,TResult Function( PurchaseOrderReceiveConfirmed value)?  receiveConfirmed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested() when loadRequested != null:
return loadRequested(_that);case PurchaseOrderDetailRequested() when detailRequested != null:
return detailRequested(_that);case PurchaseOrderReceiveScanned() when receiveScanned != null:
return receiveScanned(_that);case PurchaseOrderReceiveConfirmed() when receiveConfirmed != null:
return receiveConfirmed(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PurchaseOrderLoadRequested value)  loadRequested,required TResult Function( PurchaseOrderDetailRequested value)  detailRequested,required TResult Function( PurchaseOrderReceiveScanned value)  receiveScanned,required TResult Function( PurchaseOrderReceiveConfirmed value)  receiveConfirmed,}){
final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested():
return loadRequested(_that);case PurchaseOrderDetailRequested():
return detailRequested(_that);case PurchaseOrderReceiveScanned():
return receiveScanned(_that);case PurchaseOrderReceiveConfirmed():
return receiveConfirmed(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PurchaseOrderLoadRequested value)?  loadRequested,TResult? Function( PurchaseOrderDetailRequested value)?  detailRequested,TResult? Function( PurchaseOrderReceiveScanned value)?  receiveScanned,TResult? Function( PurchaseOrderReceiveConfirmed value)?  receiveConfirmed,}){
final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested() when loadRequested != null:
return loadRequested(_that);case PurchaseOrderDetailRequested() when detailRequested != null:
return detailRequested(_that);case PurchaseOrderReceiveScanned() when receiveScanned != null:
return receiveScanned(_that);case PurchaseOrderReceiveConfirmed() when receiveConfirmed != null:
return receiveConfirmed(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadRequested,TResult Function( String id)?  detailRequested,TResult Function( String purchaseOrderId,  String barcode,  int quantity)?  receiveScanned,TResult Function( String purchaseOrderId,  String barcode,  int quantity)?  receiveConfirmed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested() when loadRequested != null:
return loadRequested();case PurchaseOrderDetailRequested() when detailRequested != null:
return detailRequested(_that.id);case PurchaseOrderReceiveScanned() when receiveScanned != null:
return receiveScanned(_that.purchaseOrderId,_that.barcode,_that.quantity);case PurchaseOrderReceiveConfirmed() when receiveConfirmed != null:
return receiveConfirmed(_that.purchaseOrderId,_that.barcode,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadRequested,required TResult Function( String id)  detailRequested,required TResult Function( String purchaseOrderId,  String barcode,  int quantity)  receiveScanned,required TResult Function( String purchaseOrderId,  String barcode,  int quantity)  receiveConfirmed,}) {final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested():
return loadRequested();case PurchaseOrderDetailRequested():
return detailRequested(_that.id);case PurchaseOrderReceiveScanned():
return receiveScanned(_that.purchaseOrderId,_that.barcode,_that.quantity);case PurchaseOrderReceiveConfirmed():
return receiveConfirmed(_that.purchaseOrderId,_that.barcode,_that.quantity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadRequested,TResult? Function( String id)?  detailRequested,TResult? Function( String purchaseOrderId,  String barcode,  int quantity)?  receiveScanned,TResult? Function( String purchaseOrderId,  String barcode,  int quantity)?  receiveConfirmed,}) {final _that = this;
switch (_that) {
case PurchaseOrderLoadRequested() when loadRequested != null:
return loadRequested();case PurchaseOrderDetailRequested() when detailRequested != null:
return detailRequested(_that.id);case PurchaseOrderReceiveScanned() when receiveScanned != null:
return receiveScanned(_that.purchaseOrderId,_that.barcode,_that.quantity);case PurchaseOrderReceiveConfirmed() when receiveConfirmed != null:
return receiveConfirmed(_that.purchaseOrderId,_that.barcode,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class PurchaseOrderLoadRequested implements PurchaseOrderEvent {
  const PurchaseOrderLoadRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderLoadRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PurchaseOrderEvent.loadRequested()';
}


}




/// @nodoc


class PurchaseOrderDetailRequested implements PurchaseOrderEvent {
  const PurchaseOrderDetailRequested(this.id);
  

 final  String id;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderDetailRequestedCopyWith<PurchaseOrderDetailRequested> get copyWith => _$PurchaseOrderDetailRequestedCopyWithImpl<PurchaseOrderDetailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderDetailRequested&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PurchaseOrderEvent.detailRequested(id: $id)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderDetailRequestedCopyWith<$Res> implements $PurchaseOrderEventCopyWith<$Res> {
  factory $PurchaseOrderDetailRequestedCopyWith(PurchaseOrderDetailRequested value, $Res Function(PurchaseOrderDetailRequested) _then) = _$PurchaseOrderDetailRequestedCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$PurchaseOrderDetailRequestedCopyWithImpl<$Res>
    implements $PurchaseOrderDetailRequestedCopyWith<$Res> {
  _$PurchaseOrderDetailRequestedCopyWithImpl(this._self, this._then);

  final PurchaseOrderDetailRequested _self;
  final $Res Function(PurchaseOrderDetailRequested) _then;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(PurchaseOrderDetailRequested(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PurchaseOrderReceiveScanned implements PurchaseOrderEvent {
  const PurchaseOrderReceiveScanned({required this.purchaseOrderId, required this.barcode, this.quantity = 1});
  

 final  String purchaseOrderId;
 final  String barcode;
@JsonKey() final  int quantity;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderReceiveScannedCopyWith<PurchaseOrderReceiveScanned> get copyWith => _$PurchaseOrderReceiveScannedCopyWithImpl<PurchaseOrderReceiveScanned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderReceiveScanned&&(identical(other.purchaseOrderId, purchaseOrderId) || other.purchaseOrderId == purchaseOrderId)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,purchaseOrderId,barcode,quantity);

@override
String toString() {
  return 'PurchaseOrderEvent.receiveScanned(purchaseOrderId: $purchaseOrderId, barcode: $barcode, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderReceiveScannedCopyWith<$Res> implements $PurchaseOrderEventCopyWith<$Res> {
  factory $PurchaseOrderReceiveScannedCopyWith(PurchaseOrderReceiveScanned value, $Res Function(PurchaseOrderReceiveScanned) _then) = _$PurchaseOrderReceiveScannedCopyWithImpl;
@useResult
$Res call({
 String purchaseOrderId, String barcode, int quantity
});




}
/// @nodoc
class _$PurchaseOrderReceiveScannedCopyWithImpl<$Res>
    implements $PurchaseOrderReceiveScannedCopyWith<$Res> {
  _$PurchaseOrderReceiveScannedCopyWithImpl(this._self, this._then);

  final PurchaseOrderReceiveScanned _self;
  final $Res Function(PurchaseOrderReceiveScanned) _then;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? purchaseOrderId = null,Object? barcode = null,Object? quantity = null,}) {
  return _then(PurchaseOrderReceiveScanned(
purchaseOrderId: null == purchaseOrderId ? _self.purchaseOrderId : purchaseOrderId // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PurchaseOrderReceiveConfirmed implements PurchaseOrderEvent {
  const PurchaseOrderReceiveConfirmed({required this.purchaseOrderId, required this.barcode, required this.quantity});
  

 final  String purchaseOrderId;
 final  String barcode;
 final  int quantity;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderReceiveConfirmedCopyWith<PurchaseOrderReceiveConfirmed> get copyWith => _$PurchaseOrderReceiveConfirmedCopyWithImpl<PurchaseOrderReceiveConfirmed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderReceiveConfirmed&&(identical(other.purchaseOrderId, purchaseOrderId) || other.purchaseOrderId == purchaseOrderId)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,purchaseOrderId,barcode,quantity);

@override
String toString() {
  return 'PurchaseOrderEvent.receiveConfirmed(purchaseOrderId: $purchaseOrderId, barcode: $barcode, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderReceiveConfirmedCopyWith<$Res> implements $PurchaseOrderEventCopyWith<$Res> {
  factory $PurchaseOrderReceiveConfirmedCopyWith(PurchaseOrderReceiveConfirmed value, $Res Function(PurchaseOrderReceiveConfirmed) _then) = _$PurchaseOrderReceiveConfirmedCopyWithImpl;
@useResult
$Res call({
 String purchaseOrderId, String barcode, int quantity
});




}
/// @nodoc
class _$PurchaseOrderReceiveConfirmedCopyWithImpl<$Res>
    implements $PurchaseOrderReceiveConfirmedCopyWith<$Res> {
  _$PurchaseOrderReceiveConfirmedCopyWithImpl(this._self, this._then);

  final PurchaseOrderReceiveConfirmed _self;
  final $Res Function(PurchaseOrderReceiveConfirmed) _then;

/// Create a copy of PurchaseOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? purchaseOrderId = null,Object? barcode = null,Object? quantity = null,}) {
  return _then(PurchaseOrderReceiveConfirmed(
purchaseOrderId: null == purchaseOrderId ? _self.purchaseOrderId : purchaseOrderId // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
