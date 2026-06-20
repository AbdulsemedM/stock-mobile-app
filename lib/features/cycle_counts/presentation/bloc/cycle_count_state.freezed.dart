// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_count_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CycleCountState {

 StateStatus get status; List<CycleCount> get counts; CycleCount? get selectedCount; String? get scannedBarcode; int get entryQuantity; String? get errorMessage; bool get entrySuccess;
/// Create a copy of CycleCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountStateCopyWith<CycleCountState> get copyWith => _$CycleCountStateCopyWithImpl<CycleCountState>(this as CycleCountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.counts, counts)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.scannedBarcode, scannedBarcode) || other.scannedBarcode == scannedBarcode)&&(identical(other.entryQuantity, entryQuantity) || other.entryQuantity == entryQuantity)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.entrySuccess, entrySuccess) || other.entrySuccess == entrySuccess));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(counts),selectedCount,scannedBarcode,entryQuantity,errorMessage,entrySuccess);

@override
String toString() {
  return 'CycleCountState(status: $status, counts: $counts, selectedCount: $selectedCount, scannedBarcode: $scannedBarcode, entryQuantity: $entryQuantity, errorMessage: $errorMessage, entrySuccess: $entrySuccess)';
}


}

/// @nodoc
abstract mixin class $CycleCountStateCopyWith<$Res>  {
  factory $CycleCountStateCopyWith(CycleCountState value, $Res Function(CycleCountState) _then) = _$CycleCountStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<CycleCount> counts, CycleCount? selectedCount, String? scannedBarcode, int entryQuantity, String? errorMessage, bool entrySuccess
});




}
/// @nodoc
class _$CycleCountStateCopyWithImpl<$Res>
    implements $CycleCountStateCopyWith<$Res> {
  _$CycleCountStateCopyWithImpl(this._self, this._then);

  final CycleCountState _self;
  final $Res Function(CycleCountState) _then;

/// Create a copy of CycleCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? counts = null,Object? selectedCount = freezed,Object? scannedBarcode = freezed,Object? entryQuantity = null,Object? errorMessage = freezed,Object? entrySuccess = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as List<CycleCount>,selectedCount: freezed == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as CycleCount?,scannedBarcode: freezed == scannedBarcode ? _self.scannedBarcode : scannedBarcode // ignore: cast_nullable_to_non_nullable
as String?,entryQuantity: null == entryQuantity ? _self.entryQuantity : entryQuantity // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,entrySuccess: null == entrySuccess ? _self.entrySuccess : entrySuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CycleCountState].
extension CycleCountStatePatterns on CycleCountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CycleCountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CycleCountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CycleCountState value)  $default,){
final _that = this;
switch (_that) {
case _CycleCountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CycleCountState value)?  $default,){
final _that = this;
switch (_that) {
case _CycleCountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<CycleCount> counts,  CycleCount? selectedCount,  String? scannedBarcode,  int entryQuantity,  String? errorMessage,  bool entrySuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CycleCountState() when $default != null:
return $default(_that.status,_that.counts,_that.selectedCount,_that.scannedBarcode,_that.entryQuantity,_that.errorMessage,_that.entrySuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<CycleCount> counts,  CycleCount? selectedCount,  String? scannedBarcode,  int entryQuantity,  String? errorMessage,  bool entrySuccess)  $default,) {final _that = this;
switch (_that) {
case _CycleCountState():
return $default(_that.status,_that.counts,_that.selectedCount,_that.scannedBarcode,_that.entryQuantity,_that.errorMessage,_that.entrySuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<CycleCount> counts,  CycleCount? selectedCount,  String? scannedBarcode,  int entryQuantity,  String? errorMessage,  bool entrySuccess)?  $default,) {final _that = this;
switch (_that) {
case _CycleCountState() when $default != null:
return $default(_that.status,_that.counts,_that.selectedCount,_that.scannedBarcode,_that.entryQuantity,_that.errorMessage,_that.entrySuccess);case _:
  return null;

}
}

}

/// @nodoc


class _CycleCountState implements CycleCountState {
  const _CycleCountState({this.status = StateStatus.initial, final  List<CycleCount> counts = const [], this.selectedCount, this.scannedBarcode, this.entryQuantity = 1, this.errorMessage, this.entrySuccess = false}): _counts = counts;
  

@override@JsonKey() final  StateStatus status;
 final  List<CycleCount> _counts;
@override@JsonKey() List<CycleCount> get counts {
  if (_counts is EqualUnmodifiableListView) return _counts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_counts);
}

@override final  CycleCount? selectedCount;
@override final  String? scannedBarcode;
@override@JsonKey() final  int entryQuantity;
@override final  String? errorMessage;
@override@JsonKey() final  bool entrySuccess;

/// Create a copy of CycleCountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleCountStateCopyWith<_CycleCountState> get copyWith => __$CycleCountStateCopyWithImpl<_CycleCountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleCountState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._counts, _counts)&&(identical(other.selectedCount, selectedCount) || other.selectedCount == selectedCount)&&(identical(other.scannedBarcode, scannedBarcode) || other.scannedBarcode == scannedBarcode)&&(identical(other.entryQuantity, entryQuantity) || other.entryQuantity == entryQuantity)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.entrySuccess, entrySuccess) || other.entrySuccess == entrySuccess));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_counts),selectedCount,scannedBarcode,entryQuantity,errorMessage,entrySuccess);

@override
String toString() {
  return 'CycleCountState(status: $status, counts: $counts, selectedCount: $selectedCount, scannedBarcode: $scannedBarcode, entryQuantity: $entryQuantity, errorMessage: $errorMessage, entrySuccess: $entrySuccess)';
}


}

/// @nodoc
abstract mixin class _$CycleCountStateCopyWith<$Res> implements $CycleCountStateCopyWith<$Res> {
  factory _$CycleCountStateCopyWith(_CycleCountState value, $Res Function(_CycleCountState) _then) = __$CycleCountStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<CycleCount> counts, CycleCount? selectedCount, String? scannedBarcode, int entryQuantity, String? errorMessage, bool entrySuccess
});




}
/// @nodoc
class __$CycleCountStateCopyWithImpl<$Res>
    implements _$CycleCountStateCopyWith<$Res> {
  __$CycleCountStateCopyWithImpl(this._self, this._then);

  final _CycleCountState _self;
  final $Res Function(_CycleCountState) _then;

/// Create a copy of CycleCountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? counts = null,Object? selectedCount = freezed,Object? scannedBarcode = freezed,Object? entryQuantity = null,Object? errorMessage = freezed,Object? entrySuccess = null,}) {
  return _then(_CycleCountState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,counts: null == counts ? _self._counts : counts // ignore: cast_nullable_to_non_nullable
as List<CycleCount>,selectedCount: freezed == selectedCount ? _self.selectedCount : selectedCount // ignore: cast_nullable_to_non_nullable
as CycleCount?,scannedBarcode: freezed == scannedBarcode ? _self.scannedBarcode : scannedBarcode // ignore: cast_nullable_to_non_nullable
as String?,entryQuantity: null == entryQuantity ? _self.entryQuantity : entryQuantity // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,entrySuccess: null == entrySuccess ? _self.entrySuccess : entrySuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
