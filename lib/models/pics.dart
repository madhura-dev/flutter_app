class TravelModel {
  String image;

  TravelModel(this.image);
}

List<TravelModel> pics =
picsData.map((item) => TravelModel(item['image'])).toList();

var picsData = [
  {
    "image":
    ""
  },
  {
    "image":
    "https://hhib.b-cdn.net/wp-content/uploads/2017/11/bibi-ka-maqbara-aurangabad.jpg"
  },
  {
    "image":
    "http://mytraveltrippune.com/img/ashtvinayak_bhimashankar/ajanta-caves.jpg"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTanitsa5VeXJxOoLVsdJ4EMA9X-zpZKmG3Xw&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2B-xUDZD9IA0Akg8Xgv_UDTCj3PJIU9ohgA&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMdqwVhH1LiAM9QN0t5amrKJTClqmLh1Ch6w&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1u0YvPWbC_hq2XevwW8cUTJcdAQKWdRjdOw&usqp=CAU"
  },
];
