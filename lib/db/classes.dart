class Mouse {
  final String name;
  final String description;
  final String maker;
  final int battery;
  final List<String> colors;
  final List<String> connection;
  final String shape;
  final String? ergoHand;
  final int polling;
  final int price;
  final int reactionTime;
  final String switchType;
  final int weight;
  final String? imageUrl;
  Mouse(
      {required this.name,
      required this.description,
      required this.maker,
      required this.battery,
      required this.colors,
      required this.connection,
      required this.shape,
      this.ergoHand,
      required this.polling,
      required this.price,
      required this.reactionTime,
      required this.switchType,
      required this.weight,
      this.imageUrl});

  Mouse.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          description: json['description'],
          maker: json['maker'],
          battery: json['battery'],
          colors: json['colors'],
          connection: json['connection'],
          shape: json['shape'],
          ergoHand: json['ergoHand'],
          polling: json['polling'],
          price: json['price'],
          reactionTime: json['reactionTime'],
          switchType: json['switchType'],
          weight: json['weight'],
          imageUrl: json['imageUrl'],
        );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'maker': maker,
      'battery': battery,
      'colors': colors,
      'connection': connection,
      'shape': shape,
      'ergoHand': ergoHand,
      'polling': polling,
      'price': price,
      'reactionTime': reactionTime,
      'switchType': switchType,
      'weight': weight,
      'imageUrl': imageUrl,
    };
  }
}
