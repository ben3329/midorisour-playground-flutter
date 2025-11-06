// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creature1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Creature1 extends Creature1 {
  @override
  final AnyOf anyOf;

  factory _$Creature1([void Function(Creature1Builder)? updates]) =>
      (Creature1Builder()..update(updates))._build();

  _$Creature1._({required this.anyOf}) : super._();
  @override
  Creature1 rebuild(void Function(Creature1Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Creature1Builder toBuilder() => Creature1Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creature1 && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Creature1')..add('anyOf', anyOf))
        .toString();
  }
}

class Creature1Builder implements Builder<Creature1, Creature1Builder> {
  _$Creature1? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  Creature1Builder() {
    Creature1._defaults(this);
  }

  Creature1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creature1 other) {
    _$v = other as _$Creature1;
  }

  @override
  void update(void Function(Creature1Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Creature1 build() => _build();

  _$Creature1 _build() {
    final _$result = _$v ??
        _$Creature1._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'Creature1', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
