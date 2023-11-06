class DataModel {
  int? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  DataModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory DataModel.fromjson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: Rating.fromjson(json["rating"]));
  }
  Map<String, dynamic> tojson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "description": description,
      "category": category,
      "image": image,
      "rating": rating,
    };
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.count, this.rate});

  factory Rating.fromjson(Map<String, dynamic> json) {
    return Rating(
      count: json["count"],
      rate: json["rate"],
    );
  }

  Map<String, dynamic> tojson() {
    return {
      "count": count,
      "rate": rate,
    };
  }
}
