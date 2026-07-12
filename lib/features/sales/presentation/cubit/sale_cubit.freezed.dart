// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaleState {

 StateStatus get status; List<SaleLineItem> get lines; String get customerName; String get paymentType; String? get errorMessage; bool get submitted;
/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleStateCopyWith<SaleState> get copyWith => _$SaleStateCopyWithImpl<SaleState>(this as SaleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.lines, lines)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.submitted, submitted) || other.submitted == submitted));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(lines),customerName,paymentType,errorMessage,submitted);

@override
String toString() {
  return 'SaleState(status: $status, lines: $lines, customerName: $customerName, paymentType: $paymentType, errorMessage: $errorMessage, submitted: $submitted)';
}


}

/// @nodoc
abstract mixin class $SaleStateCopyWith<$Res>  {
  factory $SaleStateCopyWith(SaleState value, $Res Function(SaleState) _then) = _$SaleStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<SaleLineItem> lines, String customerName, String paymentType, String? errorMessage, bool submitted
});




}
/// @nodoc
class _$SaleStateCopyWithImpl<$Res>
    implements $SaleStateCopyWith<$Res> {
  _$SaleStateCopyWithImpl(this._self, this._then);

  final SaleState _self;
  final $Res Function(SaleState) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? lines = null,Object? customerName = null,Object? paymentType = null,Object? errorMessage = freezed,Object? submitted = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<SaleLineItem>,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleState].
extension SaleStatePatterns on SaleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleState value)  $default,){
final _that = this;
switch (_that) {
case _SaleState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleState value)?  $default,){
final _that = this;
switch (_that) {
case _SaleState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<SaleLineItem> lines,  String customerName,  String paymentType,  String? errorMessage,  bool submitted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleState() when $default != null:
return $default(_that.status,_that.lines,_that.customerName,_that.paymentType,_that.errorMessage,_that.submitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<SaleLineItem> lines,  String customerName,  String paymentType,  String? errorMessage,  bool submitted)  $default,) {final _that = this;
switch (_that) {
case _SaleState():
return $default(_that.status,_that.lines,_that.customerName,_that.paymentType,_that.errorMessage,_that.submitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<SaleLineItem> lines,  String customerName,  String paymentType,  String? errorMessage,  bool submitted)?  $default,) {final _that = this;
switch (_that) {
case _SaleState() when $default != null:
return $default(_that.status,_that.lines,_that.customerName,_that.paymentType,_that.errorMessage,_that.submitted);case _:
  return null;

}
}

}

/// @nodoc


class _SaleState extends SaleState {
  const _SaleState({this.status = StateStatus.initial, final  List<SaleLineItem> lines = const [], this.customerName = '', this.paymentType = 'cash', this.errorMessage, this.submitted = false}): _lines = lines,super._();
  

@override@JsonKey() final  StateStatus status;
 final  List<SaleLineItem> _lines;
@override@JsonKey() List<SaleLineItem> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey() final  String customerName;
@override@JsonKey() final  String paymentType;
@override final  String? errorMessage;
@override@JsonKey() final  bool submitted;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStateCopyWith<_SaleState> get copyWith => __$SaleStateCopyWithImpl<_SaleState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._lines, _lines)&&(identical(other.customerName, customerName) || other.customerName == customerName)&&(identical(other.paymentType, paymentType) || other.paymentType == paymentType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.submitted, submitted) || other.submitted == submitted));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_lines),customerName,paymentType,errorMessage,submitted);

@override
String toString() {
  return 'SaleState(status: $status, lines: $lines, customerName: $customerName, paymentType: $paymentType, errorMessage: $errorMessage, submitted: $submitted)';
}


}

/// @nodoc
abstract mixin class _$SaleStateCopyWith<$Res> implements $SaleStateCopyWith<$Res> {
  factory _$SaleStateCopyWith(_SaleState value, $Res Function(_SaleState) _then) = __$SaleStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<SaleLineItem> lines, String customerName, String paymentType, String? errorMessage, bool submitted
});




}
/// @nodoc
class __$SaleStateCopyWithImpl<$Res>
    implements _$SaleStateCopyWith<$Res> {
  __$SaleStateCopyWithImpl(this._self, this._then);

  final _SaleState _self;
  final $Res Function(_SaleState) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? lines = null,Object? customerName = null,Object? paymentType = null,Object? errorMessage = freezed,Object? submitted = null,}) {
  return _then(_SaleState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<SaleLineItem>,customerName: null == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String,paymentType: null == paymentType ? _self.paymentType : paymentType // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
