// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WarehouseModel {

 String get id; String get name; String? get code; String? get address;
/// Create a copy of WarehouseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WarehouseModelCopyWith<WarehouseModel> get copyWith => _$WarehouseModelCopyWithImpl<WarehouseModel>(this as WarehouseModel, _$identity);

  /// Serializes this WarehouseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WarehouseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,address);

@override
String toString() {
  return 'WarehouseModel(id: $id, name: $name, code: $code, address: $address)';
}


}

/// @nodoc
abstract mixin class $WarehouseModelCopyWith<$Res>  {
  factory $WarehouseModelCopyWith(WarehouseModel value, $Res Function(WarehouseModel) _then) = _$WarehouseModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? code, String? address
});




}
/// @nodoc
class _$WarehouseModelCopyWithImpl<$Res>
    implements $WarehouseModelCopyWith<$Res> {
  _$WarehouseModelCopyWithImpl(this._self, this._then);

  final WarehouseModel _self;
  final $Res Function(WarehouseModel) _then;

/// Create a copy of WarehouseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? address = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WarehouseModel].
extension WarehouseModelPatterns on WarehouseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WarehouseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WarehouseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WarehouseModel value)  $default,){
final _that = this;
switch (_that) {
case _WarehouseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WarehouseModel value)?  $default,){
final _that = this;
switch (_that) {
case _WarehouseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  String? address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WarehouseModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? code,  String? address)  $default,) {final _that = this;
switch (_that) {
case _WarehouseModel():
return $default(_that.id,_that.name,_that.code,_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? code,  String? address)?  $default,) {final _that = this;
switch (_that) {
case _WarehouseModel() when $default != null:
return $default(_that.id,_that.name,_that.code,_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WarehouseModel extends WarehouseModel {
  const _WarehouseModel({required this.id, required this.name, this.code, this.address}): super._();
  factory _WarehouseModel.fromJson(Map<String, dynamic> json) => _$WarehouseModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? code;
@override final  String? address;

/// Create a copy of WarehouseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WarehouseModelCopyWith<_WarehouseModel> get copyWith => __$WarehouseModelCopyWithImpl<_WarehouseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WarehouseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WarehouseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.code, code) || other.code == code)&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,code,address);

@override
String toString() {
  return 'WarehouseModel(id: $id, name: $name, code: $code, address: $address)';
}


}

/// @nodoc
abstract mixin class _$WarehouseModelCopyWith<$Res> implements $WarehouseModelCopyWith<$Res> {
  factory _$WarehouseModelCopyWith(_WarehouseModel value, $Res Function(_WarehouseModel) _then) = __$WarehouseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? code, String? address
});




}
/// @nodoc
class __$WarehouseModelCopyWithImpl<$Res>
    implements _$WarehouseModelCopyWith<$Res> {
  __$WarehouseModelCopyWithImpl(this._self, this._then);

  final _WarehouseModel _self;
  final $Res Function(_WarehouseModel) _then;

/// Create a copy of WarehouseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? code = freezed,Object? address = freezed,}) {
  return _then(_WarehouseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
