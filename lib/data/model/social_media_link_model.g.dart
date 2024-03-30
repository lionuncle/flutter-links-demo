// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_media_link_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SocialMediaLinkAdapter extends TypeAdapter<SocialMediaLink> {
  @override
  final int typeId = 0;

  @override
  SocialMediaLink read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SocialMediaLink(
      title: fields[0] as String,
      link: fields[1] as String,
      customTitle: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SocialMediaLink obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.link)
      ..writeByte(2)
      ..write(obj.customTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SocialMediaLinkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
