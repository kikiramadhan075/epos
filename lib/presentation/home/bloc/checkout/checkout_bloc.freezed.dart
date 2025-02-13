// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutEventCopyWith<$Res> {
  factory $CheckoutEventCopyWith(
          CheckoutEvent value, $Res Function(CheckoutEvent) then) =
      _$CheckoutEventCopyWithImpl<$Res, CheckoutEvent>;
}

/// @nodoc
class _$CheckoutEventCopyWithImpl<$Res, $Val extends CheckoutEvent>
    implements $CheckoutEventCopyWith<$Res> {
  _$CheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.started'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CheckoutEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddCheckoutImplCopyWith<$Res> {
  factory _$$AddCheckoutImplCopyWith(
          _$AddCheckoutImpl value, $Res Function(_$AddCheckoutImpl) then) =
      __$$AddCheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddCheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddCheckoutImpl>
    implements _$$AddCheckoutImplCopyWith<$Res> {
  __$$AddCheckoutImplCopyWithImpl(
      _$AddCheckoutImpl _value, $Res Function(_$AddCheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddCheckoutImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddCheckoutImpl with DiagnosticableTreeMixin implements _AddCheckout {
  const _$AddCheckoutImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addCheckout(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addCheckout'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCheckoutImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCheckoutImplCopyWith<_$AddCheckoutImpl> get copyWith =>
      __$$AddCheckoutImplCopyWithImpl<_$AddCheckoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return addCheckout(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return addCheckout?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (addCheckout != null) {
      return addCheckout(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return addCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return addCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (addCheckout != null) {
      return addCheckout(this);
    }
    return orElse();
  }
}

abstract class _AddCheckout implements CheckoutEvent {
  const factory _AddCheckout(final Product product) = _$AddCheckoutImpl;

  Product get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCheckoutImplCopyWith<_$AddCheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveCheckoutImplCopyWith<$Res> {
  factory _$$RemoveCheckoutImplCopyWith(_$RemoveCheckoutImpl value,
          $Res Function(_$RemoveCheckoutImpl) then) =
      __$$RemoveCheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$RemoveCheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveCheckoutImpl>
    implements _$$RemoveCheckoutImplCopyWith<$Res> {
  __$$RemoveCheckoutImplCopyWithImpl(
      _$RemoveCheckoutImpl _value, $Res Function(_$RemoveCheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveCheckoutImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$RemoveCheckoutImpl
    with DiagnosticableTreeMixin
    implements _RemoveCheckout {
  const _$RemoveCheckoutImpl(this.product);

  @override
  final Product product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeCheckout(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeCheckout'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveCheckoutImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveCheckoutImplCopyWith<_$RemoveCheckoutImpl> get copyWith =>
      __$$RemoveCheckoutImplCopyWithImpl<_$RemoveCheckoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return removeCheckout(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return removeCheckout?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (removeCheckout != null) {
      return removeCheckout(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return removeCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return removeCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (removeCheckout != null) {
      return removeCheckout(this);
    }
    return orElse();
  }
}

abstract class _RemoveCheckout implements CheckoutEvent {
  const factory _RemoveCheckout(final Product product) = _$RemoveCheckoutImpl;

  Product get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveCheckoutImplCopyWith<_$RemoveCheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllCheckoutImplCopyWith<$Res> {
  factory _$$RemoveAllCheckoutImplCopyWith(_$RemoveAllCheckoutImpl value,
          $Res Function(_$RemoveAllCheckoutImpl) then) =
      __$$RemoveAllCheckoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product? product});
}

/// @nodoc
class __$$RemoveAllCheckoutImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveAllCheckoutImpl>
    implements _$$RemoveAllCheckoutImplCopyWith<$Res> {
  __$$RemoveAllCheckoutImplCopyWithImpl(_$RemoveAllCheckoutImpl _value,
      $Res Function(_$RemoveAllCheckoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$RemoveAllCheckoutImpl(
      freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc

class _$RemoveAllCheckoutImpl
    with DiagnosticableTreeMixin
    implements _RemoveAllCheckout {
  const _$RemoveAllCheckoutImpl(this.product);

  @override
  final Product? product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeAllCheckout(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.removeAllCheckout'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveAllCheckoutImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveAllCheckoutImplCopyWith<_$RemoveAllCheckoutImpl> get copyWith =>
      __$$RemoveAllCheckoutImplCopyWithImpl<_$RemoveAllCheckoutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return removeAllCheckout(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return removeAllCheckout?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (removeAllCheckout != null) {
      return removeAllCheckout(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return removeAllCheckout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return removeAllCheckout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (removeAllCheckout != null) {
      return removeAllCheckout(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllCheckout implements CheckoutEvent {
  const factory _RemoveAllCheckout(final Product? product) =
      _$RemoveAllCheckoutImpl;

  Product? get product;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveAllCheckoutImplCopyWith<_$RemoveAllCheckoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDiscountImplCopyWith<$Res> {
  factory _$$AddDiscountImplCopyWith(
          _$AddDiscountImpl value, $Res Function(_$AddDiscountImpl) then) =
      __$$AddDiscountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Discount discount});
}

/// @nodoc
class __$$AddDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$AddDiscountImpl>
    implements _$$AddDiscountImplCopyWith<$Res> {
  __$$AddDiscountImplCopyWithImpl(
      _$AddDiscountImpl _value, $Res Function(_$AddDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = null,
  }) {
    return _then(_$AddDiscountImpl(
      null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount,
    ));
  }
}

/// @nodoc

class _$AddDiscountImpl with DiagnosticableTreeMixin implements _AddDiscount {
  const _$AddDiscountImpl(this.discount);

  @override
  final Discount discount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.addDiscount(discount: $discount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.addDiscount'))
      ..add(DiagnosticsProperty('discount', discount));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDiscountImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      __$$AddDiscountImplCopyWithImpl<_$AddDiscountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return addDiscount(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return addDiscount?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return addDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return addDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (addDiscount != null) {
      return addDiscount(this);
    }
    return orElse();
  }
}

abstract class _AddDiscount implements CheckoutEvent {
  const factory _AddDiscount(final Discount discount) = _$AddDiscountImpl;

  Discount get discount;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddDiscountImplCopyWith<_$AddDiscountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveDiscountImplCopyWith<$Res> {
  factory _$$RemoveDiscountImplCopyWith(_$RemoveDiscountImpl value,
          $Res Function(_$RemoveDiscountImpl) then) =
      __$$RemoveDiscountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveDiscountImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$RemoveDiscountImpl>
    implements _$$RemoveDiscountImplCopyWith<$Res> {
  __$$RemoveDiscountImplCopyWithImpl(
      _$RemoveDiscountImpl _value, $Res Function(_$RemoveDiscountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveDiscountImpl
    with DiagnosticableTreeMixin
    implements _RemoveDiscount {
  const _$RemoveDiscountImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.removeDiscount()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutEvent.removeDiscount'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveDiscountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return removeDiscount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return removeDiscount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return removeDiscount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return removeDiscount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (removeDiscount != null) {
      return removeDiscount(this);
    }
    return orElse();
  }
}

abstract class _RemoveDiscount implements CheckoutEvent {
  const factory _RemoveDiscount() = _$RemoveDiscountImpl;
}

/// @nodoc
abstract class _$$SetTaxImplCopyWith<$Res> {
  factory _$$SetTaxImplCopyWith(
          _$SetTaxImpl value, $Res Function(_$SetTaxImpl) then) =
      __$$SetTaxImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? tax});
}

/// @nodoc
class __$$SetTaxImplCopyWithImpl<$Res>
    extends _$CheckoutEventCopyWithImpl<$Res, _$SetTaxImpl>
    implements _$$SetTaxImplCopyWith<$Res> {
  __$$SetTaxImplCopyWithImpl(
      _$SetTaxImpl _value, $Res Function(_$SetTaxImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tax = freezed,
  }) {
    return _then(_$SetTaxImpl(
      freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SetTaxImpl with DiagnosticableTreeMixin implements _SetTax {
  const _$SetTaxImpl(this.tax);

  @override
  final double? tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutEvent.setTax(tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutEvent.setTax'))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTaxImpl &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tax);

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTaxImplCopyWith<_$SetTaxImpl> get copyWith =>
      __$$SetTaxImplCopyWithImpl<_$SetTaxImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) addCheckout,
    required TResult Function(Product product) removeCheckout,
    required TResult Function(Product? product) removeAllCheckout,
    required TResult Function(Discount discount) addDiscount,
    required TResult Function() removeDiscount,
    required TResult Function(double? tax) setTax,
  }) {
    return setTax(tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Product product)? addCheckout,
    TResult? Function(Product product)? removeCheckout,
    TResult? Function(Product? product)? removeAllCheckout,
    TResult? Function(Discount discount)? addDiscount,
    TResult? Function()? removeDiscount,
    TResult? Function(double? tax)? setTax,
  }) {
    return setTax?.call(tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? addCheckout,
    TResult Function(Product product)? removeCheckout,
    TResult Function(Product? product)? removeAllCheckout,
    TResult Function(Discount discount)? addDiscount,
    TResult Function()? removeDiscount,
    TResult Function(double? tax)? setTax,
    required TResult orElse(),
  }) {
    if (setTax != null) {
      return setTax(tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddCheckout value) addCheckout,
    required TResult Function(_RemoveCheckout value) removeCheckout,
    required TResult Function(_RemoveAllCheckout value) removeAllCheckout,
    required TResult Function(_AddDiscount value) addDiscount,
    required TResult Function(_RemoveDiscount value) removeDiscount,
    required TResult Function(_SetTax value) setTax,
  }) {
    return setTax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddCheckout value)? addCheckout,
    TResult? Function(_RemoveCheckout value)? removeCheckout,
    TResult? Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult? Function(_AddDiscount value)? addDiscount,
    TResult? Function(_RemoveDiscount value)? removeDiscount,
    TResult? Function(_SetTax value)? setTax,
  }) {
    return setTax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddCheckout value)? addCheckout,
    TResult Function(_RemoveCheckout value)? removeCheckout,
    TResult Function(_RemoveAllCheckout value)? removeAllCheckout,
    TResult Function(_AddDiscount value)? addDiscount,
    TResult Function(_RemoveDiscount value)? removeDiscount,
    TResult Function(_SetTax value)? setTax,
    required TResult orElse(),
  }) {
    if (setTax != null) {
      return setTax(this);
    }
    return orElse();
  }
}

abstract class _SetTax implements CheckoutEvent {
  const factory _SetTax(final double? tax) = _$SetTaxImpl;

  double? get tax;

  /// Create a copy of CheckoutEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetTaxImplCopyWith<_$SetTaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckoutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutStateCopyWith<$Res> {
  factory $CheckoutStateCopyWith(
          CheckoutState value, $Res Function(CheckoutState) then) =
      _$CheckoutStateCopyWithImpl<$Res, CheckoutState>;
}

/// @nodoc
class _$CheckoutStateCopyWithImpl<$Res, $Val extends CheckoutState>
    implements $CheckoutStateCopyWith<$Res> {
  _$CheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CheckoutState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CheckoutState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CheckoutState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      Discount? discount,
      double? tax});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalQuantity = null,
    Object? totalPrice = null,
    Object? discount = freezed,
    Object? tax = freezed,
  }) {
    return _then(_$SuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
      null == totalQuantity
          ? _value.totalQuantity
          : totalQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as Discount?,
      freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements _Success {
  const _$SuccessImpl(final List<OrderItem> products, this.totalQuantity,
      this.totalPrice, this.discount, this.tax)
      : _products = products;

  final List<OrderItem> _products;
  @override
  List<OrderItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int totalQuantity;
  @override
  final int totalPrice;
  @override
  final Discount? discount;
  @override
  final double? tax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.success(products: $products, totalQuantity: $totalQuantity, totalPrice: $totalPrice, discount: $discount, tax: $tax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.success'))
      ..add(DiagnosticsProperty('products', products))
      ..add(DiagnosticsProperty('totalQuantity', totalQuantity))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('discount', discount))
      ..add(DiagnosticsProperty('tax', tax));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      totalQuantity,
      totalPrice,
      discount,
      tax);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)
        success,
    required TResult Function(String message) error,
  }) {
    return success(products, totalQuantity, totalPrice, discount, tax);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(products, totalQuantity, totalPrice, discount, tax);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products, totalQuantity, totalPrice, discount, tax);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CheckoutState {
  const factory _Success(
      final List<OrderItem> products,
      final int totalQuantity,
      final int totalPrice,
      final Discount? discount,
      final double? tax) = _$SuccessImpl;

  List<OrderItem> get products;
  int get totalQuantity;
  int get totalPrice;
  Discount? get discount;
  double? get tax;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CheckoutStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl with DiagnosticableTreeMixin implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckoutState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckoutState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<OrderItem> products, int totalQuantity,
            int totalPrice, Discount? discount, double? tax)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CheckoutState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of CheckoutState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
