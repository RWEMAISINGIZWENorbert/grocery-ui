class ProductsModel {
  final String name;
  final String desc;
  final double calories;
  final double quantity;
  final double unityPrice;
  final String imageUrl;
  final String category;

  ProductsModel({
    required this.name,
    required this.desc,
    required this.calories,
    required this.quantity,
    required this.unityPrice,
    required this.imageUrl,
    required this.category,
  });

  static List<ProductsModel> initProducts() {
    List<ProductsModel> products = [];

    products.add(ProductsModel(
      name: 'Fresh Apple', 
      desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Qui corrupti magnam, ratione aspernatur eveniet ab iure animi quasi perspiciatis error nam suscipit obcaecati veritatis eligendi voluptates tempora incidunt doloribus dolorum.', 
      calories: 12.00, 
      quantity: 5,
      imageUrl: 'https://raw.githubusercontent.com/RWEMAISINGIZWENorbert/Flutter_UI-Design/refs/heads/main/assets/grocery/apple.png',
      unityPrice: 4.3,
      category: 'fruits',
      ));
    products.add(ProductsModel(
      name: 'Orange', 
      desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Qui corrupti magnam, ratione aspernatur eveniet ab iure animi quasi perspiciatis error nam suscipit obcaecati veritatis eligendi voluptates tempora incidunt doloribus dolorum.', 
      calories: 12.00, 
      quantity: 10,
      unityPrice: 12.00,
      imageUrl: 'https://raw.githubusercontent.com/RWEMAISINGIZWENorbert/Flutter_UI-Design/refs/heads/main/assets/grocery/orange.png',
      category: 'vegetables'
      ));
    products.add(ProductsModel(
      name: 'melon', 
      desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Qui corrupti magnam, ratione aspernatur eveniet ab iure animi quasi perspiciatis error nam suscipit obcaecati veritatis eligendi voluptates tempora incidunt doloribus dolorum.', 
      calories: 12.00, 
      quantity: 8,
      unityPrice: 14.00,
      imageUrl:  'https://raw.githubusercontent.com/RWEMAISINGIZWENorbert/Flutter_UI-Design/refs/heads/main/assets/grocery/melon.png',
      category: 'fast food'
      ));
    products.add(ProductsModel(
      name: 'potato', 
      desc: 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Qui corrupti magnam, ratione aspernatur eveniet ab iure animi quasi perspiciatis error nam suscipit obcaecati veritatis eligendi voluptates tempora incidunt doloribus dolorum.', 
      calories: 12.00, 
      quantity: 15,
      unityPrice: 8.00,
      imageUrl: 'https://raw.githubusercontent.com/RWEMAISINGIZWENorbert/Flutter_UI-Design/refs/heads/main/assets/grocery/potato.png',
      category: 'fast food',
      ));

    return products;
  }

}