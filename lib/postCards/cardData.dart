class cardData {
  final String location;
  final String type;
  final String description;
  final List<String> image;
  final String username;
  final String name;
  final String title;
  final String time;

  cardData({
    this.location = '',
    
    this.description = '',
    
    this.name = '',
    this.title = '',
    this.time = '',
    required this.image,
    required this.type,
    required this.username,
  });
}
