// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScannerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScannerState()';
}


}

/// @nodoc
class $ScannerStateCopyWith<$Res>  {
$ScannerStateCopyWith(ScannerState _, $Res Function(ScannerState) __);
}


/// Adds pattern-matching-related methods to [ScannerState].
extension ScannerStatePatterns on ScannerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ScannerInitial value)?  initial,TResult Function( ScannerScanning value)?  scanning,TResult Function( ScannerPermissionDenied value)?  permissionDenied,TResult Function( ScannerFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ScannerInitial() when initial != null:
return initial(_that);case ScannerScanning() when scanning != null:
return scanning(_that);case ScannerPermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case ScannerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ScannerInitial value)  initial,required TResult Function( ScannerScanning value)  scanning,required TResult Function( ScannerPermissionDenied value)  permissionDenied,required TResult Function( ScannerFailure value)  failure,}){
final _that = this;
switch (_that) {
case ScannerInitial():
return initial(_that);case ScannerScanning():
return scanning(_that);case ScannerPermissionDenied():
return permissionDenied(_that);case ScannerFailure():
return failure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ScannerInitial value)?  initial,TResult? Function( ScannerScanning value)?  scanning,TResult? Function( ScannerPermissionDenied value)?  permissionDenied,TResult? Function( ScannerFailure value)?  failure,}){
final _that = this;
switch (_that) {
case ScannerInitial() when initial != null:
return initial(_that);case ScannerScanning() when scanning != null:
return scanning(_that);case ScannerPermissionDenied() when permissionDenied != null:
return permissionDenied(_that);case ScannerFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  scanning,TResult Function()?  permissionDenied,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ScannerInitial() when initial != null:
return initial();case ScannerScanning() when scanning != null:
return scanning();case ScannerPermissionDenied() when permissionDenied != null:
return permissionDenied();case ScannerFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  scanning,required TResult Function()  permissionDenied,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case ScannerInitial():
return initial();case ScannerScanning():
return scanning();case ScannerPermissionDenied():
return permissionDenied();case ScannerFailure():
return failure(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  scanning,TResult? Function()?  permissionDenied,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case ScannerInitial() when initial != null:
return initial();case ScannerScanning() when scanning != null:
return scanning();case ScannerPermissionDenied() when permissionDenied != null:
return permissionDenied();case ScannerFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ScannerInitial implements ScannerState {
  const ScannerInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScannerState.initial()';
}


}




/// @nodoc


class ScannerScanning implements ScannerState {
  const ScannerScanning();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerScanning);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScannerState.scanning()';
}


}




/// @nodoc


class ScannerPermissionDenied implements ScannerState {
  const ScannerPermissionDenied();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerPermissionDenied);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScannerState.permissionDenied()';
}


}




/// @nodoc


class ScannerFailure implements ScannerState {
  const ScannerFailure({required this.message});
  

 final  String message;

/// Create a copy of ScannerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScannerFailureCopyWith<ScannerFailure> get copyWith => _$ScannerFailureCopyWithImpl<ScannerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScannerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ScannerState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $ScannerFailureCopyWith<$Res> implements $ScannerStateCopyWith<$Res> {
  factory $ScannerFailureCopyWith(ScannerFailure value, $Res Function(ScannerFailure) _then) = _$ScannerFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ScannerFailureCopyWithImpl<$Res>
    implements $ScannerFailureCopyWith<$Res> {
  _$ScannerFailureCopyWithImpl(this._self, this._then);

  final ScannerFailure _self;
  final $Res Function(ScannerFailure) _then;

/// Create a copy of ScannerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ScannerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
