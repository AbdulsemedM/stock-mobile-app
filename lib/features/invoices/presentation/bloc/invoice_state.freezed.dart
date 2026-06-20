// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceState {

 StateStatus get status; List<Invoice> get invoices; Invoice? get selectedInvoice; String? get errorMessage;
/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceStateCopyWith<InvoiceState> get copyWith => _$InvoiceStateCopyWithImpl<InvoiceState>(this as InvoiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.invoices, invoices)&&(identical(other.selectedInvoice, selectedInvoice) || other.selectedInvoice == selectedInvoice)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(invoices),selectedInvoice,errorMessage);

@override
String toString() {
  return 'InvoiceState(status: $status, invoices: $invoices, selectedInvoice: $selectedInvoice, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $InvoiceStateCopyWith<$Res>  {
  factory $InvoiceStateCopyWith(InvoiceState value, $Res Function(InvoiceState) _then) = _$InvoiceStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<Invoice> invoices, Invoice? selectedInvoice, String? errorMessage
});




}
/// @nodoc
class _$InvoiceStateCopyWithImpl<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  _$InvoiceStateCopyWithImpl(this._self, this._then);

  final InvoiceState _self;
  final $Res Function(InvoiceState) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? invoices = null,Object? selectedInvoice = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,invoices: null == invoices ? _self.invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<Invoice>,selectedInvoice: freezed == selectedInvoice ? _self.selectedInvoice : selectedInvoice // ignore: cast_nullable_to_non_nullable
as Invoice?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceState].
extension InvoiceStatePatterns on InvoiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceState value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceState value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<Invoice> invoices,  Invoice? selectedInvoice,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceState() when $default != null:
return $default(_that.status,_that.invoices,_that.selectedInvoice,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<Invoice> invoices,  Invoice? selectedInvoice,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _InvoiceState():
return $default(_that.status,_that.invoices,_that.selectedInvoice,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<Invoice> invoices,  Invoice? selectedInvoice,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceState() when $default != null:
return $default(_that.status,_that.invoices,_that.selectedInvoice,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceState implements InvoiceState {
  const _InvoiceState({this.status = StateStatus.initial, final  List<Invoice> invoices = const [], this.selectedInvoice, this.errorMessage}): _invoices = invoices;
  

@override@JsonKey() final  StateStatus status;
 final  List<Invoice> _invoices;
@override@JsonKey() List<Invoice> get invoices {
  if (_invoices is EqualUnmodifiableListView) return _invoices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invoices);
}

@override final  Invoice? selectedInvoice;
@override final  String? errorMessage;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceStateCopyWith<_InvoiceState> get copyWith => __$InvoiceStateCopyWithImpl<_InvoiceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._invoices, _invoices)&&(identical(other.selectedInvoice, selectedInvoice) || other.selectedInvoice == selectedInvoice)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_invoices),selectedInvoice,errorMessage);

@override
String toString() {
  return 'InvoiceState(status: $status, invoices: $invoices, selectedInvoice: $selectedInvoice, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$InvoiceStateCopyWith<$Res> implements $InvoiceStateCopyWith<$Res> {
  factory _$InvoiceStateCopyWith(_InvoiceState value, $Res Function(_InvoiceState) _then) = __$InvoiceStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<Invoice> invoices, Invoice? selectedInvoice, String? errorMessage
});




}
/// @nodoc
class __$InvoiceStateCopyWithImpl<$Res>
    implements _$InvoiceStateCopyWith<$Res> {
  __$InvoiceStateCopyWithImpl(this._self, this._then);

  final _InvoiceState _self;
  final $Res Function(_InvoiceState) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? invoices = null,Object? selectedInvoice = freezed,Object? errorMessage = freezed,}) {
  return _then(_InvoiceState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,invoices: null == invoices ? _self._invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<Invoice>,selectedInvoice: freezed == selectedInvoice ? _self.selectedInvoice : selectedInvoice // ignore: cast_nullable_to_non_nullable
as Invoice?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
