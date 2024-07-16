class StringUtils {
  static String tagsFromList(List<String> tags) {
    tags = tags.map((tag) {
      if (tag.length < 3) return tag;
      return tag[0].toUpperCase() + tag.substring(1);
    }).toList();
    return tags.join(', ');
  }
}
