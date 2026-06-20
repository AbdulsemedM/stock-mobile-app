// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PickingState {

 StateStatus get status; List<PickTask> get tasks; PickTask? get selectedTask; String? get scannedBarcode; int get pickQuantity; String? get errorMessage; bool get pickSuccess;
/// Create a copy of PickingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingStateCopyWith<PickingState> get copyWith => _$PickingStateCopyWithImpl<PickingState>(this as PickingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.selectedTask, selectedTask) || other.selectedTask == selectedTask)&&(identical(other.scannedBarcode, scannedBarcode) || other.scannedBarcode == scannedBarcode)&&(identical(other.pickQuantity, pickQuantity) || other.pickQuantity == pickQuantity)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.pickSuccess, pickSuccess) || other.pickSuccess == pickSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(tasks),selectedTask,scannedBarcode,pickQuantity,errorMessage,pickSuccess);

@override
String toString() {
  return 'PickingState(status: $status, tasks: $tasks, selectedTask: $selectedTask, scannedBarcode: $scannedBarcode, pickQuantity: $pickQuantity, errorMessage: $errorMessage, pickSuccess: $pickSuccess)';
}


}

/// @nodoc
abstract mixin class $PickingStateCopyWith<$Res>  {
  factory $PickingStateCopyWith(PickingState value, $Res Function(PickingState) _then) = _$PickingStateCopyWithImpl;
@useResult
$Res call({
 StateStatus status, List<PickTask> tasks, PickTask? selectedTask, String? scannedBarcode, int pickQuantity, String? errorMessage, bool pickSuccess
});




}
/// @nodoc
class _$PickingStateCopyWithImpl<$Res>
    implements $PickingStateCopyWith<$Res> {
  _$PickingStateCopyWithImpl(this._self, this._then);

  final PickingState _self;
  final $Res Function(PickingState) _then;

/// Create a copy of PickingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? tasks = null,Object? selectedTask = freezed,Object? scannedBarcode = freezed,Object? pickQuantity = null,Object? errorMessage = freezed,Object? pickSuccess = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<PickTask>,selectedTask: freezed == selectedTask ? _self.selectedTask : selectedTask // ignore: cast_nullable_to_non_nullable
as PickTask?,scannedBarcode: freezed == scannedBarcode ? _self.scannedBarcode : scannedBarcode // ignore: cast_nullable_to_non_nullable
as String?,pickQuantity: null == pickQuantity ? _self.pickQuantity : pickQuantity // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,pickSuccess: null == pickSuccess ? _self.pickSuccess : pickSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PickingState].
extension PickingStatePatterns on PickingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickingState value)  $default,){
final _that = this;
switch (_that) {
case _PickingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickingState value)?  $default,){
final _that = this;
switch (_that) {
case _PickingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StateStatus status,  List<PickTask> tasks,  PickTask? selectedTask,  String? scannedBarcode,  int pickQuantity,  String? errorMessage,  bool pickSuccess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickingState() when $default != null:
return $default(_that.status,_that.tasks,_that.selectedTask,_that.scannedBarcode,_that.pickQuantity,_that.errorMessage,_that.pickSuccess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StateStatus status,  List<PickTask> tasks,  PickTask? selectedTask,  String? scannedBarcode,  int pickQuantity,  String? errorMessage,  bool pickSuccess)  $default,) {final _that = this;
switch (_that) {
case _PickingState():
return $default(_that.status,_that.tasks,_that.selectedTask,_that.scannedBarcode,_that.pickQuantity,_that.errorMessage,_that.pickSuccess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StateStatus status,  List<PickTask> tasks,  PickTask? selectedTask,  String? scannedBarcode,  int pickQuantity,  String? errorMessage,  bool pickSuccess)?  $default,) {final _that = this;
switch (_that) {
case _PickingState() when $default != null:
return $default(_that.status,_that.tasks,_that.selectedTask,_that.scannedBarcode,_that.pickQuantity,_that.errorMessage,_that.pickSuccess);case _:
  return null;

}
}

}

/// @nodoc


class _PickingState implements PickingState {
  const _PickingState({this.status = StateStatus.initial, final  List<PickTask> tasks = const [], this.selectedTask, this.scannedBarcode, this.pickQuantity = 1, this.errorMessage, this.pickSuccess = false}): _tasks = tasks;
  

@override@JsonKey() final  StateStatus status;
 final  List<PickTask> _tasks;
@override@JsonKey() List<PickTask> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override final  PickTask? selectedTask;
@override final  String? scannedBarcode;
@override@JsonKey() final  int pickQuantity;
@override final  String? errorMessage;
@override@JsonKey() final  bool pickSuccess;

/// Create a copy of PickingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickingStateCopyWith<_PickingState> get copyWith => __$PickingStateCopyWithImpl<_PickingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickingState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.selectedTask, selectedTask) || other.selectedTask == selectedTask)&&(identical(other.scannedBarcode, scannedBarcode) || other.scannedBarcode == scannedBarcode)&&(identical(other.pickQuantity, pickQuantity) || other.pickQuantity == pickQuantity)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.pickSuccess, pickSuccess) || other.pickSuccess == pickSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_tasks),selectedTask,scannedBarcode,pickQuantity,errorMessage,pickSuccess);

@override
String toString() {
  return 'PickingState(status: $status, tasks: $tasks, selectedTask: $selectedTask, scannedBarcode: $scannedBarcode, pickQuantity: $pickQuantity, errorMessage: $errorMessage, pickSuccess: $pickSuccess)';
}


}

/// @nodoc
abstract mixin class _$PickingStateCopyWith<$Res> implements $PickingStateCopyWith<$Res> {
  factory _$PickingStateCopyWith(_PickingState value, $Res Function(_PickingState) _then) = __$PickingStateCopyWithImpl;
@override @useResult
$Res call({
 StateStatus status, List<PickTask> tasks, PickTask? selectedTask, String? scannedBarcode, int pickQuantity, String? errorMessage, bool pickSuccess
});




}
/// @nodoc
class __$PickingStateCopyWithImpl<$Res>
    implements _$PickingStateCopyWith<$Res> {
  __$PickingStateCopyWithImpl(this._self, this._then);

  final _PickingState _self;
  final $Res Function(_PickingState) _then;

/// Create a copy of PickingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? tasks = null,Object? selectedTask = freezed,Object? scannedBarcode = freezed,Object? pickQuantity = null,Object? errorMessage = freezed,Object? pickSuccess = null,}) {
  return _then(_PickingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as StateStatus,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<PickTask>,selectedTask: freezed == selectedTask ? _self.selectedTask : selectedTask // ignore: cast_nullable_to_non_nullable
as PickTask?,scannedBarcode: freezed == scannedBarcode ? _self.scannedBarcode : scannedBarcode // ignore: cast_nullable_to_non_nullable
as String?,pickQuantity: null == pickQuantity ? _self.pickQuantity : pickQuantity // ignore: cast_nullable_to_non_nullable
as int,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,pickSuccess: null == pickSuccess ? _self.pickSuccess : pickSuccess // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
