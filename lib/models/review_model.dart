class review_model {
  late List<Data> data;

  review_model({ required this.data});

  review_model.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  late String id;
  late String lang;
  late  String locationId;
  late String publishedDate;
  late int rating;
  late String helpfulVotes;
  late String ratingImageUrl;
  late String url;
  late String tripType;
  late String travelDate;
  late String text;
  late String title;
  late OwnerResponse ownerResponse;
  late User user;

  Data(
      {required this.id,
        required this.lang,
        required this.locationId,
        required this.publishedDate,
        required this.rating,
        required this.helpfulVotes,
        required this.ratingImageUrl,
        required this.url,
        required this.tripType,
        required this.travelDate,
        required this.text,
        required this.title,
        required this.ownerResponse,
        required this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lang = json['lang'];
    locationId = json['location_id'];
    publishedDate = json['published_date'];
    rating = json['rating'];
    helpfulVotes = json['helpful_votes'];
    ratingImageUrl = json['rating_image_url'];
    url = json['url'];
    tripType = json['trip_type'];
    travelDate = json['travel_date'];
    text = json['text'];
    title = json['title'];
    ownerResponse = (json['owner_response'] != null
        ? new OwnerResponse.fromJson(json['owner_response'])
        : null)!;
    user =  (json['user'] != null ? new User.fromJson(json['user']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang'] = this.lang;
    data['location_id'] = this.locationId;
    data['published_date'] = this.publishedDate;
    data['rating'] = this.rating;
    data['helpful_votes'] = this.helpfulVotes;
    data['rating_image_url'] = this.ratingImageUrl;
    data['url'] = this.url;
    data['trip_type'] = this.tripType;
    data['travel_date'] = this.travelDate;
    data['text'] = this.text;
    data['title'] = this.title;
    if (this.ownerResponse != null) {
      data['owner_response'] = this.ownerResponse.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class OwnerResponse {
  late String id;
  late String lang;
  late String publishedDate;
  late String author;
  late String text;
  late String title;

  OwnerResponse(
      {required this.id,
        required this.lang,
        required this.publishedDate,
        required this.author,
        required this.text,
        required this.title});

  OwnerResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lang = json['lang'];
    publishedDate = json['published_date'];
    author = json['author'];
    text = json['text'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lang'] = this.lang;
    data['published_date'] = this.publishedDate;
    data['author'] = this.author;
    data['text'] = this.text;
    data['title'] = this.title;
    return data;
  }
}

class User {
  late String username;
  late UserLocation userLocation;
  late Avatar avatar;

  User({required this.username, required this.userLocation, required this.avatar});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    userLocation = (json['user_location'] != null
        ? new UserLocation.fromJson(json['user_location'])
        : null)!;
    avatar =
    (json['avatar'] != null ? new Avatar.fromJson(json['avatar']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    if (this.userLocation != null) {
      data['user_location'] = this.userLocation.toJson();
    }
    if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
    return data;
  }
}

class UserLocation {
  late String name;
  late String id;

  UserLocation({required this.name, required this.id});

  UserLocation.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}

class Avatar {
  late Small small;
  late Small large;

  Avatar({required this.small, required this.large});

  Avatar.fromJson(Map<String, dynamic> json) {
    small = (json['small'] != null ? new Small.fromJson(json['small']) : null)!;
    large = (json['large'] != null ? new Small.fromJson(json['large']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.small != null) {
      data['small'] = this.small.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large.toJson();
    }
    return data;
  }
}

class Small {
  late String url;

  Small({required this.url});

  Small.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}
