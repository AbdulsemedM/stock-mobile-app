// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picking_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PickingEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PickingEvent()';
}


}

/// @nodoc
class $PickingEventCopyWith<$Res>  {
$PickingEventCopyWith(PickingEvent _, $Res Function(PickingEvent) __);
}


/// Adds pattern-matching-related methods to [PickingEvent].
extension PickingEventPatterns on PickingEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PickingLoadTasks value)?  loadTasks,TResult Function( PickingPickSubmitted value)?  pickSubmitted,TResult Function( PickingTaskSelected value)?  taskSelected,TResult Function( PickingBarcodeScanned value)?  barcodeScanned,TResult Function( PickingQuantityChanged value)?  quantityChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PickingLoadTasks() when loadTasks != null:
return loadTasks(_that);case PickingPickSubmitted() when pickSubmitted != null:
return pickSubmitted(_that);case PickingTaskSelected() when taskSelected != null:
return taskSelected(_that);case PickingBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that);case PickingQuantityChanged() when quantityChanged != null:
return quantityChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PickingLoadTasks value)  loadTasks,required TResult Function( PickingPickSubmitted value)  pickSubmitted,required TResult Function( PickingTaskSelected value)  taskSelected,required TResult Function( PickingBarcodeScanned value)  barcodeScanned,required TResult Function( PickingQuantityChanged value)  quantityChanged,}){
final _that = this;
switch (_that) {
case PickingLoadTasks():
return loadTasks(_that);case PickingPickSubmitted():
return pickSubmitted(_that);case PickingTaskSelected():
return taskSelected(_that);case PickingBarcodeScanned():
return barcodeScanned(_that);case PickingQuantityChanged():
return quantityChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PickingLoadTasks value)?  loadTasks,TResult? Function( PickingPickSubmitted value)?  pickSubmitted,TResult? Function( PickingTaskSelected value)?  taskSelected,TResult? Function( PickingBarcodeScanned value)?  barcodeScanned,TResult? Function( PickingQuantityChanged value)?  quantityChanged,}){
final _that = this;
switch (_that) {
case PickingLoadTasks() when loadTasks != null:
return loadTasks(_that);case PickingPickSubmitted() when pickSubmitted != null:
return pickSubmitted(_that);case PickingTaskSelected() when taskSelected != null:
return taskSelected(_that);case PickingBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that);case PickingQuantityChanged() when quantityChanged != null:
return quantityChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String salesOrderId)?  loadTasks,TResult Function( String salesOrderId,  String pickTaskId,  String barcode,  int quantity)?  pickSubmitted,TResult Function( String taskId)?  taskSelected,TResult Function( String barcode)?  barcodeScanned,TResult Function( int quantity)?  quantityChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PickingLoadTasks() when loadTasks != null:
return loadTasks(_that.salesOrderId);case PickingPickSubmitted() when pickSubmitted != null:
return pickSubmitted(_that.salesOrderId,_that.pickTaskId,_that.barcode,_that.quantity);case PickingTaskSelected() when taskSelected != null:
return taskSelected(_that.taskId);case PickingBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that.barcode);case PickingQuantityChanged() when quantityChanged != null:
return quantityChanged(_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String salesOrderId)  loadTasks,required TResult Function( String salesOrderId,  String pickTaskId,  String barcode,  int quantity)  pickSubmitted,required TResult Function( String taskId)  taskSelected,required TResult Function( String barcode)  barcodeScanned,required TResult Function( int quantity)  quantityChanged,}) {final _that = this;
switch (_that) {
case PickingLoadTasks():
return loadTasks(_that.salesOrderId);case PickingPickSubmitted():
return pickSubmitted(_that.salesOrderId,_that.pickTaskId,_that.barcode,_that.quantity);case PickingTaskSelected():
return taskSelected(_that.taskId);case PickingBarcodeScanned():
return barcodeScanned(_that.barcode);case PickingQuantityChanged():
return quantityChanged(_that.quantity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String salesOrderId)?  loadTasks,TResult? Function( String salesOrderId,  String pickTaskId,  String barcode,  int quantity)?  pickSubmitted,TResult? Function( String taskId)?  taskSelected,TResult? Function( String barcode)?  barcodeScanned,TResult? Function( int quantity)?  quantityChanged,}) {final _that = this;
switch (_that) {
case PickingLoadTasks() when loadTasks != null:
return loadTasks(_that.salesOrderId);case PickingPickSubmitted() when pickSubmitted != null:
return pickSubmitted(_that.salesOrderId,_that.pickTaskId,_that.barcode,_that.quantity);case PickingTaskSelected() when taskSelected != null:
return taskSelected(_that.taskId);case PickingBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that.barcode);case PickingQuantityChanged() when quantityChanged != null:
return quantityChanged(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class PickingLoadTasks implements PickingEvent {
  const PickingLoadTasks(this.salesOrderId);
  

 final  String salesOrderId;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingLoadTasksCopyWith<PickingLoadTasks> get copyWith => _$PickingLoadTasksCopyWithImpl<PickingLoadTasks>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingLoadTasks&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId));
}


@override
int get hashCode => Object.hash(runtimeType,salesOrderId);

@override
String toString() {
  return 'PickingEvent.loadTasks(salesOrderId: $salesOrderId)';
}


}

/// @nodoc
abstract mixin class $PickingLoadTasksCopyWith<$Res> implements $PickingEventCopyWith<$Res> {
  factory $PickingLoadTasksCopyWith(PickingLoadTasks value, $Res Function(PickingLoadTasks) _then) = _$PickingLoadTasksCopyWithImpl;
@useResult
$Res call({
 String salesOrderId
});




}
/// @nodoc
class _$PickingLoadTasksCopyWithImpl<$Res>
    implements $PickingLoadTasksCopyWith<$Res> {
  _$PickingLoadTasksCopyWithImpl(this._self, this._then);

  final PickingLoadTasks _self;
  final $Res Function(PickingLoadTasks) _then;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? salesOrderId = null,}) {
  return _then(PickingLoadTasks(
null == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PickingPickSubmitted implements PickingEvent {
  const PickingPickSubmitted({required this.salesOrderId, required this.pickTaskId, required this.barcode, required this.quantity});
  

 final  String salesOrderId;
 final  String pickTaskId;
 final  String barcode;
 final  int quantity;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingPickSubmittedCopyWith<PickingPickSubmitted> get copyWith => _$PickingPickSubmittedCopyWithImpl<PickingPickSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingPickSubmitted&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.pickTaskId, pickTaskId) || other.pickTaskId == pickTaskId)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,salesOrderId,pickTaskId,barcode,quantity);

@override
String toString() {
  return 'PickingEvent.pickSubmitted(salesOrderId: $salesOrderId, pickTaskId: $pickTaskId, barcode: $barcode, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PickingPickSubmittedCopyWith<$Res> implements $PickingEventCopyWith<$Res> {
  factory $PickingPickSubmittedCopyWith(PickingPickSubmitted value, $Res Function(PickingPickSubmitted) _then) = _$PickingPickSubmittedCopyWithImpl;
@useResult
$Res call({
 String salesOrderId, String pickTaskId, String barcode, int quantity
});




}
/// @nodoc
class _$PickingPickSubmittedCopyWithImpl<$Res>
    implements $PickingPickSubmittedCopyWith<$Res> {
  _$PickingPickSubmittedCopyWithImpl(this._self, this._then);

  final PickingPickSubmitted _self;
  final $Res Function(PickingPickSubmitted) _then;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? salesOrderId = null,Object? pickTaskId = null,Object? barcode = null,Object? quantity = null,}) {
  return _then(PickingPickSubmitted(
salesOrderId: null == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as String,pickTaskId: null == pickTaskId ? _self.pickTaskId : pickTaskId // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PickingTaskSelected implements PickingEvent {
  const PickingTaskSelected(this.taskId);
  

 final  String taskId;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingTaskSelectedCopyWith<PickingTaskSelected> get copyWith => _$PickingTaskSelectedCopyWithImpl<PickingTaskSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingTaskSelected&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'PickingEvent.taskSelected(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $PickingTaskSelectedCopyWith<$Res> implements $PickingEventCopyWith<$Res> {
  factory $PickingTaskSelectedCopyWith(PickingTaskSelected value, $Res Function(PickingTaskSelected) _then) = _$PickingTaskSelectedCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$PickingTaskSelectedCopyWithImpl<$Res>
    implements $PickingTaskSelectedCopyWith<$Res> {
  _$PickingTaskSelectedCopyWithImpl(this._self, this._then);

  final PickingTaskSelected _self;
  final $Res Function(PickingTaskSelected) _then;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(PickingTaskSelected(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PickingBarcodeScanned implements PickingEvent {
  const PickingBarcodeScanned(this.barcode);
  

 final  String barcode;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingBarcodeScannedCopyWith<PickingBarcodeScanned> get copyWith => _$PickingBarcodeScannedCopyWithImpl<PickingBarcodeScanned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingBarcodeScanned&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'PickingEvent.barcodeScanned(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class $PickingBarcodeScannedCopyWith<$Res> implements $PickingEventCopyWith<$Res> {
  factory $PickingBarcodeScannedCopyWith(PickingBarcodeScanned value, $Res Function(PickingBarcodeScanned) _then) = _$PickingBarcodeScannedCopyWithImpl;
@useResult
$Res call({
 String barcode
});




}
/// @nodoc
class _$PickingBarcodeScannedCopyWithImpl<$Res>
    implements $PickingBarcodeScannedCopyWith<$Res> {
  _$PickingBarcodeScannedCopyWithImpl(this._self, this._then);

  final PickingBarcodeScanned _self;
  final $Res Function(PickingBarcodeScanned) _then;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(PickingBarcodeScanned(
null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PickingQuantityChanged implements PickingEvent {
  const PickingQuantityChanged(this.quantity);
  

 final  int quantity;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickingQuantityChangedCopyWith<PickingQuantityChanged> get copyWith => _$PickingQuantityChangedCopyWithImpl<PickingQuantityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickingQuantityChanged&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'PickingEvent.quantityChanged(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $PickingQuantityChangedCopyWith<$Res> implements $PickingEventCopyWith<$Res> {
  factory $PickingQuantityChangedCopyWith(PickingQuantityChanged value, $Res Function(PickingQuantityChanged) _then) = _$PickingQuantityChangedCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$PickingQuantityChangedCopyWithImpl<$Res>
    implements $PickingQuantityChangedCopyWith<$Res> {
  _$PickingQuantityChangedCopyWithImpl(this._self, this._then);

  final PickingQuantityChanged _self;
  final $Res Function(PickingQuantityChanged) _then;

/// Create a copy of PickingEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(PickingQuantityChanged(
null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
