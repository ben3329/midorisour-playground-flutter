// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_house_common_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnimalHouseCommonResponse extends AnimalHouseCommonResponse {
  @override
  final Creature creature;
  @override
  final Mammalia mammalia;

  factory _$AnimalHouseCommonResponse(
          [void Function(AnimalHouseCommonResponseBuilder)? updates]) =>
      (AnimalHouseCommonResponseBuilder()..update(updates))._build();

  _$AnimalHouseCommonResponse._(
      {required this.creature, required this.mammalia})
      : super._();
  @override
  AnimalHouseCommonResponse rebuild(
          void Function(AnimalHouseCommonResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalHouseCommonResponseBuilder toBuilder() =>
      AnimalHouseCommonResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimalHouseCommonResponse &&
        creature == other.creature &&
        mammalia == other.mammalia;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, creature.hashCode);
    _$hash = $jc(_$hash, mammalia.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnimalHouseCommonResponse')
          ..add('creature', creature)
          ..add('mammalia', mammalia))
        .toString();
  }
}

class AnimalHouseCommonResponseBuilder
    implements
        Builder<AnimalHouseCommonResponse, AnimalHouseCommonResponseBuilder> {
  _$AnimalHouseCommonResponse? _$v;

  CreatureBuilder? _creature;
  CreatureBuilder get creature => _$this._creature ??= CreatureBuilder();
  set creature(CreatureBuilder? creature) => _$this._creature = creature;

  MammaliaBuilder? _mammalia;
  MammaliaBuilder get mammalia => _$this._mammalia ??= MammaliaBuilder();
  set mammalia(MammaliaBuilder? mammalia) => _$this._mammalia = mammalia;

  AnimalHouseCommonResponseBuilder() {
    AnimalHouseCommonResponse._defaults(this);
  }

  AnimalHouseCommonResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creature = $v.creature.toBuilder();
      _mammalia = $v.mammalia.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimalHouseCommonResponse other) {
    _$v = other as _$AnimalHouseCommonResponse;
  }

  @override
  void update(void Function(AnimalHouseCommonResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimalHouseCommonResponse build() => _build();

  _$AnimalHouseCommonResponse _build() {
    _$AnimalHouseCommonResponse _$result;
    try {
      _$result = _$v ??
          _$AnimalHouseCommonResponse._(
            creature: creature.build(),
            mammalia: mammalia.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'creature';
        creature.build();
        _$failedField = 'mammalia';
        mammalia.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AnimalHouseCommonResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
