// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({@required String email}) {
    return InvalidEmail<T>(
      email: email,
    );
  }

  ShortPassword<T> shortPassword<T>({@required String password}) {
    return ShortPassword<T>(
      password: password,
    );
  }
}

// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String email),
    @required Result shortPassword(String password),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String email),
    Result shortPassword(String password),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  });
}

abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String email});
}

class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(InvalidEmail<T>(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.email}) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String email),
    @required Result shortPassword(String password),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(email);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String email),
    Result shortPassword(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String email}) = _$InvalidEmail<T>;

  String get email;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String password});
}

class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(ShortPassword<T>(
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.password}) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String email),
    @required Result shortPassword(String password),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String email),
    Result shortPassword(String password),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required String password}) = _$ShortPassword<T>;

  String get password;
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}
