// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvoiceEvent()';
}


}

/// @nodoc
class $InvoiceEventCopyWith<$Res>  {
$InvoiceEventCopyWith(InvoiceEvent _, $Res Function(InvoiceEvent) __);
}


/// Adds pattern-matching-related methods to [InvoiceEvent].
extension InvoiceEventPatterns on InvoiceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InvoiceLoadList value)?  loadList,TResult Function( InvoiceLoadDetail value)?  loadDetail,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InvoiceLoadList() when loadList != null:
return loadList(_that);case InvoiceLoadDetail() when loadDetail != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InvoiceLoadList value)  loadList,required TResult Function( InvoiceLoadDetail value)  loadDetail,}){
final _that = this;
switch (_that) {
case InvoiceLoadList():
return loadList(_that);case InvoiceLoadDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InvoiceLoadList value)?  loadList,TResult? Function( InvoiceLoadDetail value)?  loadDetail,}){
final _that = this;
switch (_that) {
case InvoiceLoadList() when loadList != null:
return loadList(_that);case InvoiceLoadDetail() when loadDetail != null:
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
case InvoiceLoadList() when loadList != null:
return loadList();case InvoiceLoadDetail() when loadDetail != null:
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
case InvoiceLoadList():
return loadList();case InvoiceLoadDetail():
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
case InvoiceLoadList() when loadList != null:
return loadList();case InvoiceLoadDetail() when loadDetail != null:
return loadDetail(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class InvoiceLoadList implements InvoiceEvent {
  const InvoiceLoadList();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceLoadList);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvoiceEvent.loadList()';
}


}




/// @nodoc


class InvoiceLoadDetail implements InvoiceEvent {
  const InvoiceLoadDetail(this.id);
  

 final  String id;

/// Create a copy of InvoiceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceLoadDetailCopyWith<InvoiceLoadDetail> get copyWith => _$InvoiceLoadDetailCopyWithImpl<InvoiceLoadDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceLoadDetail&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'InvoiceEvent.loadDetail(id: $id)';
}


}

/// @nodoc
abstract mixin class $InvoiceLoadDetailCopyWith<$Res> implements $InvoiceEventCopyWith<$Res> {
  factory $InvoiceLoadDetailCopyWith(InvoiceLoadDetail value, $Res Function(InvoiceLoadDetail) _then) = _$InvoiceLoadDetailCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$InvoiceLoadDetailCopyWithImpl<$Res>
    implements $InvoiceLoadDetailCopyWith<$Res> {
  _$InvoiceLoadDetailCopyWithImpl(this._self, this._then);

  final InvoiceLoadDetail _self;
  final $Res Function(InvoiceLoadDetail) _then;

/// Create a copy of InvoiceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(InvoiceLoadDetail(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
