class PlaceModel {
  String image;


  PlaceModel(this.image);
}

List< PlaceModel> places = placesData
    .map((item) =>  PlaceModel(item['image']))
    .toList();

var placesData = [
  {"image": "assets/images/img_bm.png", "color": 0xFFEDF6FE,

  },

  {"image": "assets/images/img_a.jpg", "color": 0xFFEAF8E8,

  },
  {"image": "assets/images/img_b.jpg", "color": 0xFFEAF8E8,

  },
];