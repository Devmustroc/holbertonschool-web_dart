import 'dart:convert';

import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    var userData = await fetchUserData();
    var userMap = jsonDecode(userData);
    var userId = userMap['id'];

    var userOrders = await fetchUserOrders(userId);
    var ordesList = jsonDecode(userOrders);

    double totalPrice = 0;
    for (var product in ordesList) {
      var productPrice = await fetchProductPrice(product);
      totalPrice += double.parse(json.decode(productPrice).toString());
    }
    return totalPrice;
  } catch (e) {
    print("error caught : $e");
    return -1;
  }
}