class FoodMenu{
  String name;
  String description;
  String price;
  String rate;
  String imageAsset;

  FoodMenu({
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
    required this.imageAsset,
  });
}
var foodMenuList = [
  FoodMenu(
      name: 'Burger',
      description: 'Yummy burger with beef and double egg',
      price: 'Rp. 25000',
      rate: '4.8/5.0',
      imageAsset: 'images/burger.jpg'
  ),
  FoodMenu(
      name: 'Nasi Goreng',
      description: 'Nasi Goreng with Egg and Special Seasoning',
      price: 'Rp. 20.000',
      rate: '5.0/5.0',
      imageAsset: 'images/nasgor.jpg'
  ),
  FoodMenu(
      name: 'Bakso',
      description: 'Bakso is meatball.. so yummy',
      price: 'Rp. 15.000',
      rate: '5.0/5.0',
      imageAsset: 'images/bakso.jpg'
  ),
  FoodMenu(
      name: 'Ketoprak',
      description: 'Rice cake with delicious peanut sauce',
      price: 'Rp. 20.000',
      rate: '5.0/5.0',
      imageAsset: 'images/ketoprak.jpeg'
  ),
  FoodMenu(
      name: 'Nasi Liwet',
      description: 'Nasi liwet is an Indonesian rice dish cooked with coconut milk, chicken stock and spices.',
      price: 'Rp. 15.000',
      rate: '5.0/5.0',
      imageAsset: 'images/liwet.jpg'
  ),
  FoodMenu(
      name: 'Pempek',
      description: 'Pempek is one of the traditional foods from Palembang, South Sumatra province. It is made from sago and fish.',
      price: 'Rp. 10.000',
      rate: '5.0/5.0',
      imageAsset: 'images/pempek.jpg'
  ),
  FoodMenu(
      name: 'Rawon',
      description: 'Beef chunks, bean sprouts, fried shallots, shrimp crackers, salted egg, and thick black soup.',
      price: 'Rp. 20.000',
      rate: '5.0/5.0',
      imageAsset: 'images/rawon.jpg'
  ),
  FoodMenu(
      name: 'Rendang',
      description: 'Semi-wet food processed with spices, generally rendang dishes are made from beef',
      price: 'Rp. 25.000',
      rate: '5.0/5.0',
      imageAsset: 'images/rendang.jpg'
  ),
  FoodMenu(
      name: 'Sate Ayam',
      description: 'Processed chicken meat skewered using bamboo sticks, then processed by grilling, and served with various seasonings in the form of sauce or chili sauce.',
      price: 'Rp. 20.000',
      rate: '5.0/5.0',
      imageAsset: 'images/sate.jpg'
  ),
  FoodMenu(
      name: 'Sop Ayam',
      description: 'A soup made from chicken, boiled in water, usually with various other ingredients',
      price: 'Rp. 20.000',
      rate: '5.0/5.0',
      imageAsset: 'images/sopayam.jpeg'
  )
];