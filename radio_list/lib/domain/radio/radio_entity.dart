class RadioEntity {
  final String id;
  final String name;
  final String urlResolved;
  final String? homepage;
  final String? favicon;
  final List<String> tags;

  RadioEntity({
    required this.id,
    required this.name,
    required this.urlResolved,
    this.homepage,
    this.favicon,
    required this.tags,
  });
}
