// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PurchaseOrderState {

 StateStatus get status; List<PurchaseOrder> get purchaseOrders; PurchaseOrder? get selectedOrder; String? get errorMessage; String? get successMessage; String? get pendingBarcode; int get pendingQuantity;
/// Create a copy of PurchaseOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PurchaseOrderStateCopyWith<PurchaseOrderState> get copyWith => _$PurchaseOrderStateCopyWithImpl<PurchaseOrderState>(this as PurchaseOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PurchaseOrderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.purchaseOrders, purchaseOrders)&&(identical(other.selectedOrder, selectedOrder) || other.selectedOrder == selectedOrder)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.pendingBarcode, pendingBarcode) || other.pendingBarcode == pendingBarcode)&&(identical(other.pendingQuantity, pendingQuantity) || other.pendingQuantity == pendingQuantity));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(purchaseOrders),selectedOrder,errorMessage,successMessage,pendingBarcode,pendingQuantity);

@override
String toString() {
  return 'PurchaseOrderState(status: $status, purchaseOrders: $purchaseOrders, selectedOrder: $selectedOrder, errorMessage: $errorMessage, successMessage: $successMessage, pendingBarcode: $pendingBarcode, pendingQuantity: $pendingQuantity)';
}


}

/// @nodoc
abstract mixin class $PurchaseOrderStateCopyWith<$Res>  {
  factory $PurchaseOrderStateCopyWith(PurchaseOrderState value, $Res Function(PurchaseOrderState) _then) = _$PurchaseOrderStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<PurchaseOrder> purchaseOrders, PurchaseOrder? selectedOrder, String? errorMessage, String? successMessage, String? pendingBarcode, int pendingQuantity
});




}
/// @nodoc
class _$PurchaseOrderStateCopyWithImpl<$Res>
    implements $PurchaseOrderStateCopyWith<$Res> {
  _$PurchaseOrderStateCopyWithImpl(this._self, this._then);

  final PurchaseOrderState _self;
  final $Res Function(PurchaseOrderState) _then;

/// Create a copy of PurchaseOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? purchaseOrders = null,Object? selectedOrder = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,Object? pendingBarcode = freezed,Object? pendingQuantity = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,purchaseOrders: null == purchaseOrders ? _self.purchaseOrders : purchaseOrders // ignore: cast_nullable_to_non_nullable
as List<PurchaseOrder>,selectedOrder: freezed == selectedOrder ? _self.selectedOrder : selectedOrder // ignore: cast_nullable_to_non_nullable
as PurchaseOrder?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,pendingBarcode: freezed == pendingBarcode ? _self.pendingBarcode : pendingBarcode // ignore: cast_nullable_to_non_nullable
as String?,pendingQuantity: null == pendingQuantity ? _self.pendingQuantity : pendingQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PurchaseOrderState].
extension PurchaseOrderStatePatterns on PurchaseOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PurchaseOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PurchaseOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PurchaseOrderState value)  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PurchaseOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _PurchaseOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<PurchaseOrder> purchaseOrders,  PurchaseOrder? selectedOrder,  String? errorMessage,  String? successMessage,  String? pendingBarcode,  int pendingQuantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PurchaseOrderState() when $default != null:
return $default(_that.status,_that.purchaseOrders,_that.selectedOrder,_that.errorMessage,_that.successMessage,_that.pendingBarcode,_that.pendingQuantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<PurchaseOrder> purchaseOrders,  PurchaseOrder? selectedOrder,  String? errorMessage,  String? successMessage,  String? pendingBarcode,  int pendingQuantity)  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderState():
return $default(_that.status,_that.purchaseOrders,_that.selectedOrder,_that.errorMessage,_that.successMessage,_that.pendingBarcode,_that.pendingQuantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<PurchaseOrder> purchaseOrders,  PurchaseOrder? selectedOrder,  String? errorMessage,  String? successMessage,  String? pendingBarcode,  int pendingQuantity)?  $default,) {final _that = this;
switch (_that) {
case _PurchaseOrderState() when $default != null:
return $default(_that.status,_that.purchaseOrders,_that.selectedOrder,_that.errorMessage,_that.successMessage,_that.pendingBarcode,_that.pendingQuantity);case _:
  return null;

}
}

}

/// @nodoc


class _PurchaseOrderState implements PurchaseOrderState {
  const _PurchaseOrderState({this.status = StateStatus.initial, final  List<PurchaseOrder> purchaseOrders = const [], this.selectedOrder, this.errorMessage, this.successMessage, this.pendingBarcode, this.pendingQuantity = 1}): _purchaseOrders = purchaseOrders;
  

@override@JsonKey() final  StateStatus status;
 final  List<PurchaseOrder> _purchaseOrders;
@override@JsonKey() List<PurchaseOrder> get purchaseOrders {
  if (_purchaseOrders is EqualUnmodifiableListView) return _purchaseOrders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_purchaseOrders);
}

@override final  PurchaseOrder? selectedOrder;
@override final  String? errorMessage;
@override final  String? successMessage;
@override final  String? pendingBarcode;
@override@JsonKey() final  int pendingQuantity;

/// Create a copy of PurchaseOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PurchaseOrderStateCopyWith<_PurchaseOrderState> get copyWith => __$PurchaseOrderStateCopyWithImpl<_PurchaseOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PurchaseOrderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._purchaseOrders, _purchaseOrders)&&(identical(other.selectedOrder, selectedOrder) || other.selectedOrder == selectedOrder)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.pendingBarcode, pendingBarcode) || other.pendingBarcode == pendingBarcode)&&(identical(other.pendingQuantity, pendingQuantity) || other.pendingQuantity == pendingQuantity));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_purchaseOrders),selectedOrder,errorMessage,successMessage,pendingBarcode,pendingQuantity);

@override
String toString() {
  return 'PurchaseOrderState(status: $status, purchaseOrders: $purchaseOrders, selectedOrder: $selectedOrder, errorMessage: $errorMessage, successMessage: $successMessage, pendingBarcode: $pendingBarcode, pendingQuantity: $pendingQuantity)';
}


}

/// @nodoc
abstract mixin class _$PurchaseOrderStateCopyWith<$Res> implements $PurchaseOrderStateCopyWith<$Res> {
  factory _$PurchaseOrderStateCopyWith(_PurchaseOrderState value, $Res Function(_PurchaseOrderState) _then) = __$PurchaseOrderStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<PurchaseOrder> purchaseOrders, PurchaseOrder? selectedOrder, String? errorMessage, String? successMessage, String? pendingBarcode, int pendingQuantity
});




}
/// @nodoc
class __$PurchaseOrderStateCopyWithImpl<$Res>
    implements _$PurchaseOrderStateCopyWith<$Res> {
  __$PurchaseOrderStateCopyWithImpl(this._self, this._then);

  final _PurchaseOrderState _self;
  final $Res Function(_PurchaseOrderState) _then;

/// Create a copy of PurchaseOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? purchaseOrders = null,Object? selectedOrder = freezed,Object? errorMessage = freezed,Object? successMessage = freezed,Object? pendingBarcode = freezed,Object? pendingQuantity = null,}) {
  return _then(_PurchaseOrderState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,purchaseOrders: null == purchaseOrders ? _self._purchaseOrders : purchaseOrders // ignore: cast_nullable_to_non_nullable
as List<PurchaseOrder>,selectedOrder: freezed == selectedOrder ? _self.selectedOrder : selectedOrder // ignore: cast_nullable_to_non_nullable
as PurchaseOrder?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,pendingBarcode: freezed == pendingBarcode ? _self.pendingBarcode : pendingBarcode // ignore: cast_nullable_to_non_nullable
as String?,pendingQuantity: null == pendingQuantity ? _self.pendingQuantity : pendingQuantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
