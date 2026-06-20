// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_order_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SalesOrderEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesOrderEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SalesOrderEvent()';
}


}

/// @nodoc
class $SalesOrderEventCopyWith<$Res>  {
$SalesOrderEventCopyWith(SalesOrderEvent _, $Res Function(SalesOrderEvent) __);
}


/// Adds pattern-matching-related methods to [SalesOrderEvent].
extension SalesOrderEventPatterns on SalesOrderEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SalesOrderLoadList value)?  loadList,TResult Function( SalesOrderLoadDetail value)?  loadDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SalesOrderLoadList() when loadList != null:
return loadList(_that);case SalesOrderLoadDetail() when loadDetail != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SalesOrderLoadList value)  loadList,required TResult Function( SalesOrderLoadDetail value)  loadDetail,}){
final _that = this;
switch (_that) {
case SalesOrderLoadList():
return loadList(_that);case SalesOrderLoadDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SalesOrderLoadList value)?  loadList,TResult? Function( SalesOrderLoadDetail value)?  loadDetail,}){
final _that = this;
switch (_that) {
case SalesOrderLoadList() when loadList != null:
return loadList(_that);case SalesOrderLoadDetail() when loadDetail != null:
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
case SalesOrderLoadList() when loadList != null:
return loadList();case SalesOrderLoadDetail() when loadDetail != null:
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
case SalesOrderLoadList():
return loadList();case SalesOrderLoadDetail():
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
case SalesOrderLoadList() when loadList != null:
return loadList();case SalesOrderLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class SalesOrderLoadList implements SalesOrderEvent {
  const SalesOrderLoadList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesOrderLoadList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SalesOrderEvent.loadList()';
}


}




/// @nodoc


class SalesOrderLoadDetail implements SalesOrderEvent {
  const SalesOrderLoadDetail(this.id);
  

 final  String id;

/// Create a copy of SalesOrderEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesOrderLoadDetailCopyWith<SalesOrderLoadDetail> get copyWith => _$SalesOrderLoadDetailCopyWithImpl<SalesOrderLoadDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesOrderLoadDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SalesOrderEvent.loadDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class $SalesOrderLoadDetailCopyWith<$Res> implements $SalesOrderEventCopyWith<$Res> {
  factory $SalesOrderLoadDetailCopyWith(SalesOrderLoadDetail value, $Res Function(SalesOrderLoadDetail) _then) = _$SalesOrderLoadDetailCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$SalesOrderLoadDetailCopyWithImpl<$Res>
    implements $SalesOrderLoadDetailCopyWith<$Res> {
  _$SalesOrderLoadDetailCopyWithImpl(this._self, this._then);

  final SalesOrderLoadDetail _self;
  final $Res Function(SalesOrderLoadDetail) _then;

/// Create a copy of SalesOrderEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(SalesOrderLoadDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
