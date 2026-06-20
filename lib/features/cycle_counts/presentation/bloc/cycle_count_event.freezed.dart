// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_count_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CycleCountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CycleCountEvent()';
}


}

/// @nodoc
class $CycleCountEventCopyWith<$Res>  {
$CycleCountEventCopyWith(CycleCountEvent _, $Res Function(CycleCountEvent) __);
}


/// Adds pattern-matching-related methods to [CycleCountEvent].
extension CycleCountEventPatterns on CycleCountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CycleCountLoadList value)?  loadList,TResult Function( CycleCountLoadDetail value)?  loadDetail,TResult Function( CycleCountEntrySubmitted value)?  entrySubmitted,TResult Function( CycleCountBarcodeScanned value)?  barcodeScanned,TResult Function( CycleCountQuantityChanged value)?  quantityChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CycleCountLoadList() when loadList != null:
return loadList(_that);case CycleCountLoadDetail() when loadDetail != null:
return loadDetail(_that);case CycleCountEntrySubmitted() when entrySubmitted != null:
return entrySubmitted(_that);case CycleCountBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that);case CycleCountQuantityChanged() when quantityChanged != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CycleCountLoadList value)  loadList,required TResult Function( CycleCountLoadDetail value)  loadDetail,required TResult Function( CycleCountEntrySubmitted value)  entrySubmitted,required TResult Function( CycleCountBarcodeScanned value)  barcodeScanned,required TResult Function( CycleCountQuantityChanged value)  quantityChanged,}){
final _that = this;
switch (_that) {
case CycleCountLoadList():
return loadList(_that);case CycleCountLoadDetail():
return loadDetail(_that);case CycleCountEntrySubmitted():
return entrySubmitted(_that);case CycleCountBarcodeScanned():
return barcodeScanned(_that);case CycleCountQuantityChanged():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CycleCountLoadList value)?  loadList,TResult? Function( CycleCountLoadDetail value)?  loadDetail,TResult? Function( CycleCountEntrySubmitted value)?  entrySubmitted,TResult? Function( CycleCountBarcodeScanned value)?  barcodeScanned,TResult? Function( CycleCountQuantityChanged value)?  quantityChanged,}){
final _that = this;
switch (_that) {
case CycleCountLoadList() when loadList != null:
return loadList(_that);case CycleCountLoadDetail() when loadDetail != null:
return loadDetail(_that);case CycleCountEntrySubmitted() when entrySubmitted != null:
return entrySubmitted(_that);case CycleCountBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that);case CycleCountQuantityChanged() when quantityChanged != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadList,TResult Function( String id)?  loadDetail,TResult Function( String cycleCountId,  String barcode,  int quantity)?  entrySubmitted,TResult Function( String barcode)?  barcodeScanned,TResult Function( int quantity)?  quantityChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CycleCountLoadList() when loadList != null:
return loadList();case CycleCountLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case CycleCountEntrySubmitted() when entrySubmitted != null:
return entrySubmitted(_that.cycleCountId,_that.barcode,_that.quantity);case CycleCountBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that.barcode);case CycleCountQuantityChanged() when quantityChanged != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadList,required TResult Function( String id)  loadDetail,required TResult Function( String cycleCountId,  String barcode,  int quantity)  entrySubmitted,required TResult Function( String barcode)  barcodeScanned,required TResult Function( int quantity)  quantityChanged,}) {final _that = this;
switch (_that) {
case CycleCountLoadList():
return loadList();case CycleCountLoadDetail():
return loadDetail(_that.id);case CycleCountEntrySubmitted():
return entrySubmitted(_that.cycleCountId,_that.barcode,_that.quantity);case CycleCountBarcodeScanned():
return barcodeScanned(_that.barcode);case CycleCountQuantityChanged():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadList,TResult? Function( String id)?  loadDetail,TResult? Function( String cycleCountId,  String barcode,  int quantity)?  entrySubmitted,TResult? Function( String barcode)?  barcodeScanned,TResult? Function( int quantity)?  quantityChanged,}) {final _that = this;
switch (_that) {
case CycleCountLoadList() when loadList != null:
return loadList();case CycleCountLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case CycleCountEntrySubmitted() when entrySubmitted != null:
return entrySubmitted(_that.cycleCountId,_that.barcode,_that.quantity);case CycleCountBarcodeScanned() when barcodeScanned != null:
return barcodeScanned(_that.barcode);case CycleCountQuantityChanged() when quantityChanged != null:
return quantityChanged(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class CycleCountLoadList implements CycleCountEvent {
  const CycleCountLoadList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountLoadList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CycleCountEvent.loadList()';
}


}




/// @nodoc


class CycleCountLoadDetail implements CycleCountEvent {
  const CycleCountLoadDetail(this.id);
  

 final  String id;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountLoadDetailCopyWith<CycleCountLoadDetail> get copyWith => _$CycleCountLoadDetailCopyWithImpl<CycleCountLoadDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountLoadDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'CycleCountEvent.loadDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class $CycleCountLoadDetailCopyWith<$Res> implements $CycleCountEventCopyWith<$Res> {
  factory $CycleCountLoadDetailCopyWith(CycleCountLoadDetail value, $Res Function(CycleCountLoadDetail) _then) = _$CycleCountLoadDetailCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$CycleCountLoadDetailCopyWithImpl<$Res>
    implements $CycleCountLoadDetailCopyWith<$Res> {
  _$CycleCountLoadDetailCopyWithImpl(this._self, this._then);

  final CycleCountLoadDetail _self;
  final $Res Function(CycleCountLoadDetail) _then;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(CycleCountLoadDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CycleCountEntrySubmitted implements CycleCountEvent {
  const CycleCountEntrySubmitted({required this.cycleCountId, required this.barcode, required this.quantity});
  

 final  String cycleCountId;
 final  String barcode;
 final  int quantity;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountEntrySubmittedCopyWith<CycleCountEntrySubmitted> get copyWith => _$CycleCountEntrySubmittedCopyWithImpl<CycleCountEntrySubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountEntrySubmitted&&(identical(other.cycleCountId, cycleCountId) || other.cycleCountId == cycleCountId)&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,cycleCountId,barcode,quantity);

@override
String toString() {
  return 'CycleCountEvent.entrySubmitted(cycleCountId: $cycleCountId, barcode: $barcode, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CycleCountEntrySubmittedCopyWith<$Res> implements $CycleCountEventCopyWith<$Res> {
  factory $CycleCountEntrySubmittedCopyWith(CycleCountEntrySubmitted value, $Res Function(CycleCountEntrySubmitted) _then) = _$CycleCountEntrySubmittedCopyWithImpl;
@useResult
$Res call({
 String cycleCountId, String barcode, int quantity
});




}
/// @nodoc
class _$CycleCountEntrySubmittedCopyWithImpl<$Res>
    implements $CycleCountEntrySubmittedCopyWith<$Res> {
  _$CycleCountEntrySubmittedCopyWithImpl(this._self, this._then);

  final CycleCountEntrySubmitted _self;
  final $Res Function(CycleCountEntrySubmitted) _then;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cycleCountId = null,Object? barcode = null,Object? quantity = null,}) {
  return _then(CycleCountEntrySubmitted(
cycleCountId: null == cycleCountId ? _self.cycleCountId : cycleCountId // ignore: cast_nullable_to_non_nullable
as String,barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CycleCountBarcodeScanned implements CycleCountEvent {
  const CycleCountBarcodeScanned(this.barcode);
  

 final  String barcode;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountBarcodeScannedCopyWith<CycleCountBarcodeScanned> get copyWith => _$CycleCountBarcodeScannedCopyWithImpl<CycleCountBarcodeScanned>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountBarcodeScanned&&(identical(other.barcode, barcode) || other.barcode == barcode));
}


@override
int get hashCode => Object.hash(runtimeType,barcode);

@override
String toString() {
  return 'CycleCountEvent.barcodeScanned(barcode: $barcode)';
}


}

/// @nodoc
abstract mixin class $CycleCountBarcodeScannedCopyWith<$Res> implements $CycleCountEventCopyWith<$Res> {
  factory $CycleCountBarcodeScannedCopyWith(CycleCountBarcodeScanned value, $Res Function(CycleCountBarcodeScanned) _then) = _$CycleCountBarcodeScannedCopyWithImpl;
@useResult
$Res call({
 String barcode
});




}
/// @nodoc
class _$CycleCountBarcodeScannedCopyWithImpl<$Res>
    implements $CycleCountBarcodeScannedCopyWith<$Res> {
  _$CycleCountBarcodeScannedCopyWithImpl(this._self, this._then);

  final CycleCountBarcodeScanned _self;
  final $Res Function(CycleCountBarcodeScanned) _then;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? barcode = null,}) {
  return _then(CycleCountBarcodeScanned(
null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CycleCountQuantityChanged implements CycleCountEvent {
  const CycleCountQuantityChanged(this.quantity);
  

 final  int quantity;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountQuantityChangedCopyWith<CycleCountQuantityChanged> get copyWith => _$CycleCountQuantityChangedCopyWithImpl<CycleCountQuantityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountQuantityChanged&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'CycleCountEvent.quantityChanged(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CycleCountQuantityChangedCopyWith<$Res> implements $CycleCountEventCopyWith<$Res> {
  factory $CycleCountQuantityChangedCopyWith(CycleCountQuantityChanged value, $Res Function(CycleCountQuantityChanged) _then) = _$CycleCountQuantityChangedCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$CycleCountQuantityChangedCopyWithImpl<$Res>
    implements $CycleCountQuantityChangedCopyWith<$Res> {
  _$CycleCountQuantityChangedCopyWithImpl(this._self, this._then);

  final CycleCountQuantityChanged _self;
  final $Res Function(CycleCountQuantityChanged) _then;

/// Create a copy of CycleCountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(CycleCountQuantityChanged(
null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
