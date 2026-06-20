// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProductsEvent()';
}


}

/// @nodoc
class $ProductsEventCopyWith<$Res>  {
$ProductsEventCopyWith(ProductsEvent _, $Res Function(ProductsEvent) __);
}


/// Adds pattern-matching-related methods to [ProductsEvent].
extension ProductsEventPatterns on ProductsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProductsLoadRequested value)?  loadRequested,TResult Function( ProductsSearchChanged value)?  searchChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProductsLoadRequested() when loadRequested != null:
return loadRequested(_that);case ProductsSearchChanged() when searchChanged != null:
return searchChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProductsLoadRequested value)  loadRequested,required TResult Function( ProductsSearchChanged value)  searchChanged,}){
final _that = this;
switch (_that) {
case ProductsLoadRequested():
return loadRequested(_that);case ProductsSearchChanged():
return searchChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProductsLoadRequested value)?  loadRequested,TResult? Function( ProductsSearchChanged value)?  searchChanged,}){
final _that = this;
switch (_that) {
case ProductsLoadRequested() when loadRequested != null:
return loadRequested(_that);case ProductsSearchChanged() when searchChanged != null:
return searchChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? productId)?  loadRequested,TResult Function( String query)?  searchChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProductsLoadRequested() when loadRequested != null:
return loadRequested(_that.productId);case ProductsSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? productId)  loadRequested,required TResult Function( String query)  searchChanged,}) {final _that = this;
switch (_that) {
case ProductsLoadRequested():
return loadRequested(_that.productId);case ProductsSearchChanged():
return searchChanged(_that.query);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? productId)?  loadRequested,TResult? Function( String query)?  searchChanged,}) {final _that = this;
switch (_that) {
case ProductsLoadRequested() when loadRequested != null:
return loadRequested(_that.productId);case ProductsSearchChanged() when searchChanged != null:
return searchChanged(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class ProductsLoadRequested implements ProductsEvent {
  const ProductsLoadRequested({this.productId});
  

 final  String? productId;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsLoadRequestedCopyWith<ProductsLoadRequested> get copyWith => _$ProductsLoadRequestedCopyWithImpl<ProductsLoadRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsLoadRequested&&(identical(other.productId, productId) || other.productId == productId));
}


@override
int get hashCode => Object.hash(runtimeType,productId);

@override
String toString() {
  return 'ProductsEvent.loadRequested(productId: $productId)';
}


}

/// @nodoc
abstract mixin class $ProductsLoadRequestedCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory $ProductsLoadRequestedCopyWith(ProductsLoadRequested value, $Res Function(ProductsLoadRequested) _then) = _$ProductsLoadRequestedCopyWithImpl;
@useResult
$Res call({
 String? productId
});




}
/// @nodoc
class _$ProductsLoadRequestedCopyWithImpl<$Res>
    implements $ProductsLoadRequestedCopyWith<$Res> {
  _$ProductsLoadRequestedCopyWithImpl(this._self, this._then);

  final ProductsLoadRequested _self;
  final $Res Function(ProductsLoadRequested) _then;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? productId = freezed,}) {
  return _then(ProductsLoadRequested(
productId: freezed == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ProductsSearchChanged implements ProductsEvent {
  const ProductsSearchChanged(this.query);
  

 final  String query;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsSearchChangedCopyWith<ProductsSearchChanged> get copyWith => _$ProductsSearchChangedCopyWithImpl<ProductsSearchChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsSearchChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'ProductsEvent.searchChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $ProductsSearchChangedCopyWith<$Res> implements $ProductsEventCopyWith<$Res> {
  factory $ProductsSearchChangedCopyWith(ProductsSearchChanged value, $Res Function(ProductsSearchChanged) _then) = _$ProductsSearchChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$ProductsSearchChangedCopyWithImpl<$Res>
    implements $ProductsSearchChangedCopyWith<$Res> {
  _$ProductsSearchChangedCopyWithImpl(this._self, this._then);

  final ProductsSearchChanged _self;
  final $Res Function(ProductsSearchChanged) _then;

/// Create a copy of ProductsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(ProductsSearchChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
