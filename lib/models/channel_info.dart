// To parse this JSON data, do
//
//     final channelInfo = channelInfoFromJson(jsonString);

import 'dart:convert';

ChannelInfo channelInfoFromJson(String str) => ChannelInfo.fromJson(json.decode(str));

String channelInfoToJson(ChannelInfo data) => json.encode(data.toJson());

class ChannelInfo {
    ChannelInfo({
        required this.greeting,
        required this.instructions,
    });

    String greeting;
    List<String> instructions;

    factory ChannelInfo.fromJson(Map<String, dynamic> json) => ChannelInfo(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
    };
}
