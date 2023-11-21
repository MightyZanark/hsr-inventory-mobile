class Item {
  final String name;
  final String description;
  final String category;
  final int amount;

  const Item(
      {required this.name,
      required this.description,
      required this.category,
      required this.amount});

  factory Item.fromJSON(Map<String, dynamic> json) {
    return Item(
        name: json['fields']['name'],
        description: json['fields']['description'],
        category: json['fields']['category'],
        amount: json['fields']['amount']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'category': category,
      'amount': amount
    };
  }
}
