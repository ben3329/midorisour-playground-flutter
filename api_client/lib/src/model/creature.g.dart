// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Creature extends Creature {
  @override
  final AnyOf anyOf;

  factory _$Creature([void Function(CreatureBuilder)? updates]) =>
      (CreatureBuilder()..update(updates))._build();

  _$Creature._({required this.anyOf}) : super._();
  @override
  Creature rebuild(void Function(CreatureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatureBuilder toBuilder() => CreatureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Creature && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'Creature')..add('anyOf', anyOf))
        .toString();
  }
}

class CreatureBuilder implements Builder<Creature, CreatureBuilder> {
  _$Creature? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  CreatureBuilder() {
    Creature._defaults(this);
  }

  CreatureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Creature other) {
    _$v = other as _$Creature;
  }

  @override
  void update(void Function(CreatureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Creature build() => _build();

  _$Creature _build() {
    final _$result = _$v ??
        _$Creature._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'Creature', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
