// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cycle_count_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CycleCountModel {

 String get id;@JsonKey(name: 'count_number') String get countNumber;@JsonKey(name: 'warehouse_name') String get warehouseName; String get status;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'item_count') int? get itemCount;
/// Create a copy of CycleCountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CycleCountModelCopyWith<CycleCountModel> get copyWith => _$CycleCountModelCopyWithImpl<CycleCountModel>(this as CycleCountModel, _$identity);

  /// Serializes this CycleCountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CycleCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.countNumber, countNumber) || other.countNumber == countNumber)&&(identical(other.warehouseName, warehouseName) || other.warehouseName == warehouseName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countNumber,warehouseName,status,createdAt,itemCount);

@override
String toString() {
  return 'CycleCountModel(id: $id, countNumber: $countNumber, warehouseName: $warehouseName, status: $status, createdAt: $createdAt, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class $CycleCountModelCopyWith<$Res>  {
  factory $CycleCountModelCopyWith(CycleCountModel value, $Res Function(CycleCountModel) _then) = _$CycleCountModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'count_number') String countNumber,@JsonKey(name: 'warehouse_name') String warehouseName, String status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'item_count') int? itemCount
});




}
/// @nodoc
class _$CycleCountModelCopyWithImpl<$Res>
    implements $CycleCountModelCopyWith<$Res> {
  _$CycleCountModelCopyWithImpl(this._self, this._then);

  final CycleCountModel _self;
  final $Res Function(CycleCountModel) _then;

/// Create a copy of CycleCountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? countNumber = null,Object? warehouseName = null,Object? status = null,Object? createdAt = null,Object? itemCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countNumber: null == countNumber ? _self.countNumber : countNumber // ignore: cast_nullable_to_non_nullable
as String,warehouseName: null == warehouseName ? _self.warehouseName : warehouseName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CycleCountModel].
extension CycleCountModelPatterns on CycleCountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CycleCountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CycleCountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CycleCountModel value)  $default,){
final _that = this;
switch (_that) {
case _CycleCountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CycleCountModel value)?  $default,){
final _that = this;
switch (_that) {
case _CycleCountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'count_number')  String countNumber, @JsonKey(name: 'warehouse_name')  String warehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'item_count')  int? itemCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CycleCountModel() when $default != null:
return $default(_that.id,_that.countNumber,_that.warehouseName,_that.status,_that.createdAt,_that.itemCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'count_number')  String countNumber, @JsonKey(name: 'warehouse_name')  String warehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'item_count')  int? itemCount)  $default,) {final _that = this;
switch (_that) {
case _CycleCountModel():
return $default(_that.id,_that.countNumber,_that.warehouseName,_that.status,_that.createdAt,_that.itemCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'count_number')  String countNumber, @JsonKey(name: 'warehouse_name')  String warehouseName,  String status, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'item_count')  int? itemCount)?  $default,) {final _that = this;
switch (_that) {
case _CycleCountModel() when $default != null:
return $default(_that.id,_that.countNumber,_that.warehouseName,_that.status,_that.createdAt,_that.itemCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CycleCountModel extends CycleCountModel {
  const _CycleCountModel({required this.id, @JsonKey(name: 'count_number') required this.countNumber, @JsonKey(name: 'warehouse_name') required this.warehouseName, required this.status, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'item_count') this.itemCount}): super._();
  factory _CycleCountModel.fromJson(Map<String, dynamic> json) => _$CycleCountModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'count_number') final  String countNumber;
@override@JsonKey(name: 'warehouse_name') final  String warehouseName;
@override final  String status;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'item_count') final  int? itemCount;

/// Create a copy of CycleCountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CycleCountModelCopyWith<_CycleCountModel> get copyWith => __$CycleCountModelCopyWithImpl<_CycleCountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CycleCountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CycleCountModel&&(identical(other.id, id) || other.id == id)&&(identical(other.countNumber, countNumber) || other.countNumber == countNumber)&&(identical(other.warehouseName, warehouseName) || other.warehouseName == warehouseName)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.itemCount, itemCount) || other.itemCount == itemCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countNumber,warehouseName,status,createdAt,itemCount);

@override
String toString() {
  return 'CycleCountModel(id: $id, countNumber: $countNumber, warehouseName: $warehouseName, status: $status, createdAt: $createdAt, itemCount: $itemCount)';
}


}

/// @nodoc
abstract mixin class _$CycleCountModelCopyWith<$Res> implements $CycleCountModelCopyWith<$Res> {
  factory _$CycleCountModelCopyWith(_CycleCountModel value, $Res Function(_CycleCountModel) _then) = __$CycleCountModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'count_number') String countNumber,@JsonKey(name: 'warehouse_name') String warehouseName, String status,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'item_count') int? itemCount
});




}
/// @nodoc
class __$CycleCountModelCopyWithImpl<$Res>
    implements _$CycleCountModelCopyWith<$Res> {
  __$CycleCountModelCopyWithImpl(this._self, this._then);

  final _CycleCountModel _self;
  final $Res Function(_CycleCountModel) _then;

/// Create a copy of CycleCountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? countNumber = null,Object? warehouseName = null,Object? status = null,Object? createdAt = null,Object? itemCount = freezed,}) {
  return _then(_CycleCountModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countNumber: null == countNumber ? _self.countNumber : countNumber // ignore: cast_nullable_to_non_nullable
as String,warehouseName: null == warehouseName ? _self.warehouseName : warehouseName // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,itemCount: freezed == itemCount ? _self.itemCount : itemCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
