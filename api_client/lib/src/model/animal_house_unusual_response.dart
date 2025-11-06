//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/mammalia.dart';
import 'package:openapi/src/model/creature1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'animal_house_unusual_response.g.dart';

/// AnimalHouseUnusualResponse
///
/// Properties:
/// * [creature] 
/// * [mammalia] 
@BuiltValue()
abstract class AnimalHouseUnusualResponse implements Built<AnimalHouseUnusualResponse, AnimalHouseUnusualResponseBuilder> {
  @BuiltValueField(wireName: r'creature')
  Creature1 get creature;

  @BuiltValueField(wireName: r'mammalia')
  Mammalia get mammalia;

  AnimalHouseUnusualResponse._();

  factory AnimalHouseUnusualResponse([void updates(AnimalHouseUnusualResponseBuilder b)]) = _$AnimalHouseUnusualResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimalHouseUnusualResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimalHouseUnusualResponse> get serializer => _$AnimalHouseUnusualResponseSerializer();
}

class _$AnimalHouseUnusualResponseSerializer implements PrimitiveSerializer<AnimalHouseUnusualResponse> {
  @override
  final Iterable<Type> types = const [AnimalHouseUnusualResponse, _$AnimalHouseUnusualResponse];

  @override
  final String wireName = r'AnimalHouseUnusualResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimalHouseUnusualResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'creature';
    yield serializers.serialize(
      object.creature,
      specifiedType: const FullType(Creature1),
    );
    yield r'mammalia';
    yield serializers.serialize(
      object.mammalia,
      specifiedType: const FullType(Mammalia),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AnimalHouseUnusualResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnimalHouseUnusualResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'creature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Creature1),
          ) as Creature1;
          result.creature.replace(valueDes);
          break;
        case r'mammalia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Mammalia),
          ) as Mammalia;
          result.mammalia.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AnimalHouseUnusualResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimalHouseUnusualResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

