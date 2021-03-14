
class InformationModel {
String name;

String image;

String description;


InformationModel(this.name, this.image,
    this.description);
}

List<InformationModel> informations = informationsData
    .map((item) => InformationModel(item['name'],
    item['image'], item['description']))
    .toList();

var informationsData = [
  {
    "name": " What is Aurangabad",
    "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUildllmf9kSjUQJ40NFcwvl7ZnKxfFncSGw&usqp=CAU",
     "description":"Aurangabad is a city in the Indian state of Maharashtra. It is the administrative headquarters of Aurangabad district and is the largest city in the Marathwada region.",
  },

  {
    "name": " Food Exploring",
    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvaR4KsCDz6n1Lk9v421PyEAff36I0fwZlBA&usqp=CAU",
    "description": "Naan Khaliya: Aurangabad's historic dish. Each city has a special signature dish that is exclusive to it and in the case of Aurangabad, the exclusive non-veg dish that only the city can call its own is Naan Khaliya. And many more!!!",
  },




];
