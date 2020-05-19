class Category {
  final String name;
  final int price;
  final String image;

  Category(this.name, this.price, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['price'], item['image']))
    .toList();

var categoriesData = [
  {
    "name": "The Subtle art of not giving f*ck",
    'price': 17,
    'image': "assets/images/book1.jpg"
  },
  {"name": "The Namesake", 'price': 25, 'image': "assets/images/book2.jpg"},
  {"name": "State of wonder", 'price': 13, 'image': "assets/images/book3.jpg"},
  {"name": "Inferno", 'price': 17, 'image': "assets/images/book4.jpg"},
];
