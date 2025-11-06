//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/dog.dart';
import 'package:openapi/src/model/bee.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cat.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'creature1.g.dart';

/// Creature1
///
/// Properties:
/// * [name] 
/// * [meowVolume] 
/// * [barkVolume] 
@BuiltValue()
abstract class Creature1 implements Built<Creature1, Creature1Builder> {
  /// Any Of [BuiltList<Bee>], [Cat], [Dog]
  AnyOf get anyOf;

  Creature1._();

  factory Creature1([void updates(Creature1Builder b)]) = _$Creature1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Creature1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Creature1> get serializer => _$Creature1Serializer();
}

class _$Creature1Serializer implements PrimitiveSerializer<Creature1> {
  @override
  final Iterable<Type> types = const [Creature1, _$Creature1];

  @override
  final String wireName = r'Creature1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Creature1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Creature1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  Creature1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Creature1Builder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(Cat), FullType(Dog), FullType(BuiltList, [FullType(Bee)]), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

