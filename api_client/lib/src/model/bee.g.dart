// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bee.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Bee extends Bee {
  @override
  final String name;
  @override
  final String beeType;

  factory _$Bee([void Function(BeeBuilder)? updates]) =>
      (BeeBuilder()..update(updates))._build();

  _$Bee._({required this.name, required this.beeType}) : super._();
  @override
  Bee rebuild(void Function(BeeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeeBuilder toBuilder() => BeeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Bee && name == other.name && beeType == other.beeType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, beeType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Bee')
          ..add('name', name)
          ..add('beeType', beeType))
        .toString();
  }
}

class BeeBuilder implements Builder<Bee, BeeBuilder> {
  _$Bee? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _beeType;
  String? get beeType => _$this._beeType;
  set beeType(String? beeType) => _$this._beeType = beeType;

  BeeBuilder() {
    Bee._defaults(this);
  }

  BeeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _beeType = $v.beeType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Bee other) {
    _$v = other as _$Bee;
  }

  @override
  void update(void Function(BeeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Bee build() => _build();

  _$Bee _build() {
    final _$result = _$v ??
        _$Bee._(
          name: BuiltValueNullFieldError.checkNotNull(name, r'Bee', 'name'),
          beeType:
              BuiltValueNullFieldError.checkNotNull(beeType, r'Bee', 'beeType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
