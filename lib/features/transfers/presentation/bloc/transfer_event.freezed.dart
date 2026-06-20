// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TransferEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferEvent()';
}


}

/// @nodoc
class $TransferEventCopyWith<$Res>  {
$TransferEventCopyWith(TransferEvent _, $Res Function(TransferEvent) __);
}


/// Adds pattern-matching-related methods to [TransferEvent].
extension TransferEventPatterns on TransferEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TransferLoadList value)?  loadList,TResult Function( TransferLoadDetail value)?  loadDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TransferLoadList() when loadList != null:
return loadList(_that);case TransferLoadDetail() when loadDetail != null:
return loadDetail(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TransferLoadList value)  loadList,required TResult Function( TransferLoadDetail value)  loadDetail,}){
final _that = this;
switch (_that) {
case TransferLoadList():
return loadList(_that);case TransferLoadDetail():
return loadDetail(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TransferLoadList value)?  loadList,TResult? Function( TransferLoadDetail value)?  loadDetail,}){
final _that = this;
switch (_that) {
case TransferLoadList() when loadList != null:
return loadList(_that);case TransferLoadDetail() when loadDetail != null:
return loadDetail(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadList,TResult Function( String id)?  loadDetail,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TransferLoadList() when loadList != null:
return loadList();case TransferLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadList,required TResult Function( String id)  loadDetail,}) {final _that = this;
switch (_that) {
case TransferLoadList():
return loadList();case TransferLoadDetail():
return loadDetail(_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadList,TResult? Function( String id)?  loadDetail,}) {final _that = this;
switch (_that) {
case TransferLoadList() when loadList != null:
return loadList();case TransferLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class TransferLoadList implements TransferEvent {
  const TransferLoadList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferLoadList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TransferEvent.loadList()';
}


}




/// @nodoc


class TransferLoadDetail implements TransferEvent {
  const TransferLoadDetail(this.id);
  

 final  String id;

/// Create a copy of TransferEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TransferLoadDetailCopyWith<TransferLoadDetail> get copyWith => _$TransferLoadDetailCopyWithImpl<TransferLoadDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TransferLoadDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'TransferEvent.loadDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class $TransferLoadDetailCopyWith<$Res> implements $TransferEventCopyWith<$Res> {
  factory $TransferLoadDetailCopyWith(TransferLoadDetail value, $Res Function(TransferLoadDetail) _then) = _$TransferLoadDetailCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$TransferLoadDetailCopyWithImpl<$Res>
    implements $TransferLoadDetailCopyWith<$Res> {
  _$TransferLoadDetailCopyWithImpl(this._self, this._then);

  final TransferLoadDetail _self;
  final $Res Function(TransferLoadDetail) _then;

/// Create a copy of TransferEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(TransferLoadDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
