class Onboarding {
  String? image;    
  String? title;
  String? description;

  Onboarding({this.image, this.title, this.description});

  Onboarding.fromJson(Map<String, dynamic> json) {
    image = json["image"];
    title = json["title"];
    description = json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["image"] = image;
    data["title"] = title;
    data["description"] = description;
    return data;
  }
}
