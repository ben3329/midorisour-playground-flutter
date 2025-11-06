//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/creature.dart';
import 'package:openapi/src/model/mammalia.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'animal_house_common_response.g.dart';

/// AnimalHouseCommonResponse
///
/// Properties:
/// * [creature] 
/// * [mammalia] 
@BuiltValue()
abstract class AnimalHouseCommonResponse implements Built<AnimalHouseCommonResponse, AnimalHouseCommonResponseBuilder> {
  @BuiltValueField(wireName: r'creature')
  Creature get creature;

  @BuiltValueField(wireName: r'mammalia')
  Mammalia get mammalia;

  AnimalHouseCommonResponse._();

  factory AnimalHouseCommonResponse([void updates(AnimalHouseCommonResponseBuilder b)]) = _$AnimalHouseCommonResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnimalHouseCommonResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnimalHouseCommonResponse> get serializer => _$AnimalHouseCommonResponseSerializer();
}

class _$AnimalHouseCommonResponseSerializer implements PrimitiveSerializer<AnimalHouseCommonResponse> {
  @override
  final Iterable<Type> types = const [AnimalHouseCommonResponse, _$AnimalHouseCommonResponse];

  @override
  final String wireName = r'AnimalHouseCommonResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnimalHouseCommonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'creature';
    yield serializers.serialize(
      object.creature,
      specifiedType: const FullType(Creature),
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
    AnimalHouseCommonResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnimalHouseCommonResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'creature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Creature),
          ) as Creature;
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
  AnimalHouseCommonResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnimalHouseCommonResponseBuilder();
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

