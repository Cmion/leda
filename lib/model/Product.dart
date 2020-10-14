class Product {
  final String title, description, image, id;
  final int reviews;
  final double price;

  Product(
      {this.id,
      this.description,
      this.title,
      this.reviews = 0,
      this.price,
      this.image});
}

String sport_bra_undies =
    '''Mid Impact Molded Cup Seamless Sports Bra helps keep you cool and dry during medium-impact activities with sweat-wicking fabric. Built-in contoured bra cups offer extra shaping and support, while adjustable Y-back straps provide a customized fit. A wide underbust band and seam-free design offer lasting comfort during any activity.

Medium-impact support
Built-in padding and wire-free design
Pullover style
92% nylon/ 8% spandex
Machine wash and dry
Imported''';

List<Product> products = [
  Product(
      id: 'knitted_sport_bra',
      description: sport_bra_undies,
      title: 'Knitted sport bra',
      image: 'assets/images/knitted_sport_bra1.jpg',
      reviews: 3120,
      price: 60),
  Product(
      id: 'short_floral_gown',
      description: sport_bra_undies,
      title: 'short_floral_gown',
      image: 'assets/images/short_floral_gown.jpg',
      reviews: 11,
      price: 90.55),
  Product(
      id: 'date_night_flare_gown',
      description: sport_bra_undies,
      title: 'Date night flare gown',
      image: 'assets/images/date_night_gown.jpg',
      reviews: 6000,
      price: 1230.99),
  Product(
      id: 'a_neckerchief_1',
      description: sport_bra_undies,
      title: 'Red floral neckerchief',
      image: 'assets/images/a_neckerchief_1.jpg',
      reviews: 120,
      price: 1200),
  Product(
      id: 'cardigan_rib_knit',
      description: sport_bra_undies,
      title: 'Cardigan rib knit',
      image: 'assets/images/cardigan1.jpg',
      reviews: 120,
      price: 1200),
  Product(
      id: 'watch',
      description: sport_bra_undies,
      title: 'women_leather_wristwatch',
      image: 'assets/images/watch.jpg',
      reviews: 2000,
      price: 79.99),
  Product(
      id: 'beautiful_armless_gown',
      description: sport_bra_undies,
      title: 'beautiful_armless_gown',
      image: 'assets/images/beautiful_armless_gown.jpg',
      reviews: 40,
      price: 300),
  Product(
      id: 'a_neckerchief_2',
      description: sport_bra_undies,
      title: 'Green floral neckerchief',
      image: 'assets/images/a_neckerchief_2.jpg',
      reviews: 120,
      price: 1200),
  Product(
      id: 'monday_morning_office',
      description: sport_bra_undies,
      title: 'Monday morning Office skirt and Blouse',
      image: 'assets/images/monday_morning_office1.jpg',
      reviews: 300,
      price: 1050.99),
  Product(
      id: 'beautiful_white_office_blouse',
      description: sport_bra_undies,
      title: 'beautiful_white_office_blouse',
      image: 'assets/images/beautiful_white_office_blouse.jpg',
      reviews: 390,
      price: 690.99),
  Product(
      id: 'nike_canvas',
      description: sport_bra_undies,
      title: 'nike_canvas',
      image: 'assets/images/nike_canvas.jpg',
      reviews: 350,
      price: 245.59),
  Product(
      id: 'beautiful_blouse',
      description: sport_bra_undies,
      title: 'beautiful_blouse',
      image: 'assets/images/beautiful_blouse_1.jpg',
      reviews: 350,
      price: 367.89),
  Product(
      id: 'beautiful_blue_gown',
      description: sport_bra_undies,
      title: 'beautiful_blue_gown',
      image: 'assets/images/beautiful_blue_gown.jpg',
      reviews: 350,
      price: 367.89),
  Product(
      id: 'beautiful_brown_spotted_wear',
      description: sport_bra_undies,
      title: 'beautiful_brown_spotted_wear',
      image: 'assets/images/beautiful_brown_spotted_wear.jpg',
      reviews: 350,
      price: 367.89),
  Product(
      id: 'beautiful_flora_dress',
      description: sport_bra_undies,
      title: 'beautiful_flora_dress',
      image: 'assets/images/beautiful_flora_dress.jpg',
      reviews: 350,
      price: 367.89),
  Product(
      id: 'beautiful_grey_blouse',
      description: sport_bra_undies,
      title: 'beautiful_grey_blouse',
      image: 'assets/images/beautiful_grey_blouse.jpg',
      reviews: 350,
      price: 367.89),
  Product(
      id: 'beautiful_magenta_jumpsuit',
      description: sport_bra_undies,
      title: 'beautiful_magenta_jumpsuit',
      image: 'assets/images/beautiful_magenta_jumpsuit.jpg',
      reviews: 3450,
      price: 255.00),
  Product(
      id: 'beautiful_white_office_blouse',
      description: sport_bra_undies,
      title: 'beautiful_white_office_blouse',
      image: 'assets/images/beautiful_white_office_blouse.jpg',
      reviews: 4500,
      price: 340.90),
  Product(
      id: 'beautiful_women_short_knitted_gown',
      description: sport_bra_undies,
      title: 'beautiful_women_short_knitted_gown',
      image: 'assets/images/beautiful_women_short_knitted_gown.jpg',
      reviews: 56,
      price: 120.89),
  Product(
      id: 'beautiful_brown_blouse',
      description: sport_bra_undies,
      title: 'beautiful_brown_blouse',
      image: 'assets/images/beautiful_brown_blouse.jpg',
      reviews: 56,
      price: 311.89),
  Product(
      id: 'black_gown',
      description: sport_bra_undies,
      title: 'black_gown',
      image: 'assets/images/black_gown.jpg',
      reviews: 56,
      price: 89.11),
  Product(
      id: 'blue_gown',
      description: sport_bra_undies,
      title: 'blue_gown',
      image: 'assets/images/blue_gown.jpg',
      reviews: 43,
      price: 451.89),
  Product(
      id: 'brown_skinny_denim',
      description: sport_bra_undies,
      title: 'brown_skinny_denim',
      image: 'assets/images/brown_skinny_denim.jpg',
      reviews: 56,
      price: 345.89),
  Product(
      id: 'green_office_gown',
      description: sport_bra_undies,
      title: 'green_office_gown',
      image: 'assets/images/green_office_gown.jpg',
      reviews: 34,
      price: 190.89),
  Product(
      id: 'green_outdoor_gown',
      description: sport_bra_undies,
      title: 'green_outdoor_gown',
      image: 'assets/images/green_outdoor_gown.jpg',
      reviews: 310,
      price: 450.00),
  Product(
      id: 'grey_skinny_denim',
      description: sport_bra_undies,
      title: 'grey_skinny_denim',
      image: 'assets/images/grey_skinny_denim.jpg',
      reviews: 11,
      price: 230.00),
  Product(
      id: 'leather_boots',
      description: sport_bra_undies,
      title: 'leather_boots',
      image: 'assets/images/leather_boots.jpg',
      reviews: 45,
      price: 500.00),
  Product(
      id: 'scarf',
      description: sport_bra_undies,
      title: 'scarf',
      image: 'assets/images/scarf.jpg',
      reviews: 34,
      price: 30.00),
  Product(
      id: 'sport_bra_undies_1',
      description: sport_bra_undies,
      title: '2 Mid Impact Molded Cup Seamless Sports Bra',
      image: 'assets/images/sport_bra_undies.jpg',
      reviews: 320,
      price: 50),
  Product(
      id: 'beautiful_blouse_3',
      description: sport_bra_undies,
      title: 'beautiful_blouse',
      image: 'assets/images/beautiful_blouse_3.jpg',
      reviews: 11,
      price: 90.55),
  Product(
      id: 'skinny_denim_pants',
      description: sport_bra_undies,
      title: 'skinny_denim_pants',
      image: 'assets/images/skinny_denim_pants.jpg',
      reviews: 42,
      price: 331.89),
  Product(
      id: 'skinny_leggings',
      description: sport_bra_undies,
      title: 'skinny_leggings',
      image: 'assets/images/skinny_leggings.jpg',
      reviews: 500,
      price: 231.00),
  Product(
      id: 'tan_pant_trouser',
      description: sport_bra_undies,
      title: 'tan_pant_trouser',
      image: 'assets/images/tan_pant_trousers.jpg',
      reviews: 556,
      price: 161.00),
  Product(
      id: 'women_underwears',
      description: sport_bra_undies,
      title: 'women_underwears',
      image: 'assets/images/women_underwears.jpg',
      reviews: 2000,
      price: 79.99),
];
