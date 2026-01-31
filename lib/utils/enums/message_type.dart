enum MessageType {
  text,
  post,
  image,
  video,
  audio;

  String toJson() => name;
  static MessageType fromJson(final String json) => values.byName(json);
}
