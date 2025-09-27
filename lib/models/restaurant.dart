import 'package:collection/collection.dart';
import 'package:fooddelivery_app/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';
import 'package:flutter/foundation.dart';

class Restaurant extends ChangeNotifier {
  //list of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheese Burger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickles.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "A savory beef patty topped with crispy bacon, cheddar cheese, and smoky BBQ sauce.",
      imagePath: "lib/images/burgers/bbq_bacon_burger.png",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A hearty veggie patty with lettuce, tomato, avocado, and a tangy aioli sauce.",
      imagePath: "lib/images/burgers/veggie_burger.png",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Caramelized Onions", price: 1.49),
        Addon(name: "Garlic Aioli", price: 1.99),
        Addon(name: "Extra Swiss Cheese", price: 1.49),
      ],
    ),
    Food(
      name: "Mushroom Swiss Burger",
      description:
          "A juicy beef patty topped with sautéed mushrooms and melted Swiss cheese.",
      imagePath: "lib/images/burgers/mushroom_swiss_burger.png",
      price: 10.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Truffle Aioli", price: 2.49),
        Addon(name: "Grilled Mushrooms", price: 1.99),
        Addon(name: "Extra Swiss Cheese", price: 1.49),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce, creamy Caesar dressing, croutons, and shaved Parmesan cheese.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.99),
        Addon(name: "Avocado", price: 2.49),
        Addon(name: "Extra Dressing", price: 0.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Fresh cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese with a lemon-oregano vinaigrette.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 4.99),
        Addon(name: "Hummus", price: 2.49),
        Addon(name: "Pita Bread", price: 1.99),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "Mixed greens, grilled chicken, bacon, hard-boiled eggs, avocado, tomatoes, and blue cheese with a red wine vinaigrette.",
      imagePath: "lib/images/salads/cobb_salad.png",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Avocado", price: 2.49),
        Addon(name: "Grilled Salmon", price: 5.99),
        Addon(name: "Extra Blue Cheese", price: 1.49),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A nutritious blend of quinoa, mixed greens, cherry tomatoes, cucumbers, red onions, and a lemon-tahini dressing.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Tofu", price: 3.99),
        Addon(name: "Roasted Chickpeas", price: 1.99),
        Addon(name: "Extra Tahini Dressing", price: 0.99),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "A rich chocolate cake with a gooey molten center, served warm with vanilla ice cream.",
      imagePath: "lib/images/desserts/chocolate_lava_cake.png",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 1.99),
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Chocolate Sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "A creamy New York-style cheesecake with a graham cracker crust, served with fresh strawberries.",
      imagePath: "lib/images/desserts/cheesecake.png",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.99),
        Addon(name: "Chocolate Drizzle", price: 0.99),
        Addon(name: "Extra Whipped Cream", price: 0.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "A classic Italian dessert with layers of coffee-soaked ladyfingers, mascarpone cheese, and cocoa powder.",
      imagePath: "lib/images/desserts/tiramisu.png",
      price: 6.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cocoa Powder", price: 0.49),
        Addon(name: "Chocolate Shavings", price: 0.99),
        Addon(name: "Espresso Shot", price: 1.49),
      ],
    ),
    Food(
      name: "Red Velvet Cake",
      description:
          "A moist red velvet cake layered with cream cheese frosting and topped with chocolate shavings.",
      imagePath: "lib/images/desserts/red_velvet_cake.png",
      price: 7.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cream Cheese Frosting", price: 1.99),
        Addon(name: "Chocolate Shavings", price: 0.99),
        Addon(name: "Fresh Berries", price: 1.49),
      ],
    ),

    //drinks
    Food(
      name: "Classic Cola",
      description: "A refreshing cola beverage served chilled.",
      imagePath: "lib/images/drinks/classic_cola.png",
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.00),
        Addon(name: "Lemon Slice", price: 0.50),
      ],
    ),
    Food(
      name: "Mango Juice",
      description: "Freshly squeezed mango juice with a hint of lime.",
      imagePath: "lib/images/drinks/mango_juice.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.00),
        Addon(name: "Mint Leaves", price: 0.50),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A classic cocktail with rum, fresh mint, lime juice, sugar, and soda water.",
      imagePath: "lib/images/drinks/mojito.png",
      price: 5.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint", price: 0.50),
        Addon(name: "Lime Wedge", price: 0.25),
      ],
    ),
    Food(
      name: "Apple Juice",
      description: "Freshly pressed apple juice with a touch of cinnamon.",
      imagePath: "lib/images/drinks/apple_juice.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Ice", price: 0.00),
        Addon(name: "Cinnamon Sprinkle", price: 0.50),
      ],
    ),

    //Sides
    Food(
      name: "French Fries",
      description: "Crispy golden fries served with ketchup.",
      imagePath: "lib/images/sides/french_fries.png",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.49),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings served with ranch dip.",
      imagePath: "lib/images/sides/onion_rings.png",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Mayo", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description: "Toasted garlic bread with a side of marinara sauce.",
      imagePath: "lib/images/sides/garlic_bread.png",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.49),
        Addon(name: "Herb Butter", price: 0.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries served with a honey mustard dip.",
      imagePath: "lib/images/sides/sweet_potato_fries.png",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Honey Mustard", price: 0.99),
        Addon(name: "Cajun Seasoning", price: 0.49),
      ],
    ),
  ];

  /*
  
  G E T T E R S
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*

  O P E R A T I O N S

  */

  //user cart
  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item alredy with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //checkif the food item are the same
      bool isSameFood = item.food == food;

      //check is the list of the selected addons are same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    //if item is akredy exicts, increase the quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    //otherwise add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  //clear
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S
  
  */

  //generate a receipt
  String displayCardReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //format the date to include up to seconds only
    String formattdeDate = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).format(DateTime.now());

    receipt.writeln(formattdeDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
