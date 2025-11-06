// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal_house_unusual_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnimalHouseUnusualResponse extends AnimalHouseUnusualResponse {
  @override
  final Creature1 creature;
  @override
  final Mammalia mammalia;

  factory _$AnimalHouseUnusualResponse(
          [void Function(AnimalHouseUnusualResponseBuilder)? updates]) =>
      (AnimalHouseUnusualResponseBuilder()..update(updates))._build();

  _$AnimalHouseUnusualResponse._(
      {required this.creature, required this.mammalia})
      : super._();
  @override
  AnimalHouseUnusualResponse rebuild(
          void Function(AnimalHouseUnusualResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimalHouseUnusualResponseBuilder toBuilder() =>
      AnimalHouseUnusualResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimalHouseUnusualResponse &&
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
    return (newBuiltValueToStringHelper(r'AnimalHouseUnusualResponse')
          ..add('creature', creature)
          ..add('mammalia', mammalia))
        .toString();
  }
}

class AnimalHouseUnusualResponseBuilder
    implements
        Builder<AnimalHouseUnusualResponse, AnimalHouseUnusualResponseBuilder> {
  _$AnimalHouseUnusualResponse? _$v;

  Creature1Builder? _creature;
  Creature1Builder get creature => _$this._creature ??= Creature1Builder();
  set creature(Creature1Builder? creature) => _$this._creature = creature;

  MammaliaBuilder? _mammalia;
  MammaliaBuilder get mammalia => _$this._mammalia ??= MammaliaBuilder();
  set mammalia(MammaliaBuilder? mammalia) => _$this._mammalia = mammalia;

  AnimalHouseUnusualResponseBuilder() {
    AnimalHouseUnusualResponse._defaults(this);
  }

  AnimalHouseUnusualResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _creature = $v.creature.toBuilder();
      _mammalia = $v.mammalia.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimalHouseUnusualResponse other) {
    _$v = other as _$AnimalHouseUnusualResponse;
  }

  @override
  void update(void Function(AnimalHouseUnusualResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnimalHouseUnusualResponse build() => _build();

  _$AnimalHouseUnusualResponse _build() {
    _$AnimalHouseUnusualResponse _$result;
    try {
      _$result = _$v ??
          _$AnimalHouseUnusualResponse._(
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
            r'AnimalHouseUnusualResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
