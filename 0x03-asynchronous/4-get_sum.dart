import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Get user data
    var userDataJson = await fetchUserData();
    var userData = json.decode(userDataJson);
    var userId = userData['id'];

    // Get user orders
    var userOrdersJson = await fetchUserOrders(userId);
    var userOrders = json.decode(userOrdersJson);

    // Calculate total price
    var totalPrice = 0.0;
    for (var order in userOrders) {
      var productPriceJson = await fetchProductPrice(order);
      var productPrice = json.decode(productPriceJson);
      totalPrice += productPrice;
    }

    return totalPrice;
  } catch (e) {
    print("Error: $e");
    return -1;
  }
}
