//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ant.dart';
import 'package:openapi/src/model/dog.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/ants.dart';
import 'package:openapi/src/model/cat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'creature.g.dart';

/// Creature
///
/// Properties:
/// * [name] 
/// * [meowVolume] 
/// * [barkVolume] 
/// * [antList] - List of Ant
@BuiltValue()
abstract class Creature implements Built<Creature, CreatureBuilder> {
  /// Any Of [Ants], [Cat], [Dog]
  AnyOf get anyOf;

  Creature._();

  factory Creature([void updates(CreatureBuilder b)]) = _$Creature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Creature> get serializer => _$CreatureSerializer();
}

class _$CreatureSerializer implements PrimitiveSerializer<Creature> {
  @override
  final Iterable<Type> types = const [Creature, _$Creature];

  @override
  final String wireName = r'Creature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Creature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Creature object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Creature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreatureBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Cat), FullType(Dog), FullType(Ants), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

