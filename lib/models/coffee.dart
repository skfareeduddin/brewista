class Coffee {
  late String name;
  late String originalPrice;
  late String discountPrice;
  late String imagePath;
  late String cupSize;
  late double cupType;
  late double sugar;
  late double bread;
  late double cream;
  late double quantity;

  Coffee(
      {required this.name,
      required this.originalPrice,
      required this.discountPrice,
      required this.imagePath,
      required this.cupSize,
      required this.cupType,
      required this.sugar,
      required this.bread,
      required this.cream,
      required this.quantity});

  String get _name => name;
  String get _originalPrice => originalPrice;
  String get _discountPrice => discountPrice;
  String get _imagePath => imagePath;
  String get _cupSize => cupSize;
  double get _cupType => cupType;
  double get _sugar => sugar;
  double get _bread => bread;
  double get _cream => cream;
  double get _quantity => quantity;
}
