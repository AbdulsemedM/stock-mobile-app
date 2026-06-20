// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesOrderState {

 StateStatus get status; List<SalesOrder> get orders; SalesOrder? get selectedOrder; String? get errorMessage;
/// Create a copy of SalesOrderState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesOrderStateCopyWith<SalesOrderState> get copyWith => _$SalesOrderStateCopyWithImpl<SalesOrderState>(this as SalesOrderState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesOrderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.selectedOrder, selectedOrder) || other.selectedOrder == selectedOrder)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(orders),selectedOrder,errorMessage);

@override
String toString() {
  return 'SalesOrderState(status: $status, orders: $orders, selectedOrder: $selectedOrder, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SalesOrderStateCopyWith<$Res>  {
  factory $SalesOrderStateCopyWith(SalesOrderState value, $Res Function(SalesOrderState) _then) = _$SalesOrderStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<SalesOrder> orders, SalesOrder? selectedOrder, String? errorMessage
});




}
/// @nodoc
class _$SalesOrderStateCopyWithImpl<$Res>
    implements $SalesOrderStateCopyWith<$Res> {
  _$SalesOrderStateCopyWithImpl(this._self, this._then);

  final SalesOrderState _self;
  final $Res Function(SalesOrderState) _then;

/// Create a copy of SalesOrderState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? orders = null,Object? selectedOrder = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<SalesOrder>,selectedOrder: freezed == selectedOrder ? _self.selectedOrder : selectedOrder // ignore: cast_nullable_to_non_nullable
as SalesOrder?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesOrderState].
extension SalesOrderStatePatterns on SalesOrderState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesOrderState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesOrderState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesOrderState value)  $default,){
final _that = this;
switch (_that) {
case _SalesOrderState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesOrderState value)?  $default,){
final _that = this;
switch (_that) {
case _SalesOrderState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<SalesOrder> orders,  SalesOrder? selectedOrder,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesOrderState() when $default != null:
return $default(_that.status,_that.orders,_that.selectedOrder,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<SalesOrder> orders,  SalesOrder? selectedOrder,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SalesOrderState():
return $default(_that.status,_that.orders,_that.selectedOrder,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<SalesOrder> orders,  SalesOrder? selectedOrder,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SalesOrderState() when $default != null:
return $default(_that.status,_that.orders,_that.selectedOrder,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SalesOrderState implements SalesOrderState {
  const _SalesOrderState({this.status = StateStatus.initial, final  List<SalesOrder> orders = const [], this.selectedOrder, this.errorMessage}): _orders = orders;
  

@override@JsonKey() final  StateStatus status;
 final  List<SalesOrder> _orders;
@override@JsonKey() List<SalesOrder> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override final  SalesOrder? selectedOrder;
@override final  String? errorMessage;

/// Create a copy of SalesOrderState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesOrderStateCopyWith<_SalesOrderState> get copyWith => __$SalesOrderStateCopyWithImpl<_SalesOrderState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesOrderState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.selectedOrder, selectedOrder) || other.selectedOrder == selectedOrder)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_orders),selectedOrder,errorMessage);

@override
String toString() {
  return 'SalesOrderState(status: $status, orders: $orders, selectedOrder: $selectedOrder, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SalesOrderStateCopyWith<$Res> implements $SalesOrderStateCopyWith<$Res> {
  factory _$SalesOrderStateCopyWith(_SalesOrderState value, $Res Function(_SalesOrderState) _then) = __$SalesOrderStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<SalesOrder> orders, SalesOrder? selectedOrder, String? errorMessage
});




}
/// @nodoc
class __$SalesOrderStateCopyWithImpl<$Res>
    implements _$SalesOrderStateCopyWith<$Res> {
  __$SalesOrderStateCopyWithImpl(this._self, this._then);

  final _SalesOrderState _self;
  final $Res Function(_SalesOrderState) _then;

/// Create a copy of SalesOrderState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? orders = null,Object? selectedOrder = freezed,Object? errorMessage = freezed,}) {
  return _then(_SalesOrderState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<SalesOrder>,selectedOrder: freezed == selectedOrder ? _self.selectedOrder : selectedOrder // ignore: cast_nullable_to_non_nullable
as SalesOrder?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
