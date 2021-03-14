class FoodModel {
  String image;



  FoodModel(this.image);
}

List<FoodModel > food =
foodData.map((item) => FoodModel (item['image'])).toList();

var foodData = [
  {
    "image":
    ""
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1_MiZb_qxHj7bPxRTFd7qp3y46R_ubTXDUg&usqp=CAU"
  },

  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRz9A7hH_upBv3_JoQ7hvLwnYXdpy69zieYYA&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX1AmhWx8rH5Bc_WyLv4IY7NJ53BNYl_JpGQ&usqp=CAU"
  },

  {
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXRGKfG2y88JZQEsFVMD7buWaBmzJLzBPEiQ&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaUu9Y8n1sj1Tc0TB07c0tNFNNb7l3fPdsGg&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfc1vxMwDbNNoOwA1ToeUASD_AOaZqn8k7uA&usqp=CAU"
  },
  {
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQbPTKJKPbgzrbyvEqdFIeRF2k8oGuH4uEbA&usqp=CAU"
  },


];
