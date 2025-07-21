import '4-util.dart';
import 'dart:convert';

Future<double> calculateTotal() async {
  try {
    final userData = await fetchUserData();
    final userMap = jsonDecode(userData);
    final id = userMap['id'];

    final ordersJson = await fetchUserOrders(id);
    final productList = jsonDecode(ordersJson);

    double total = 0;
    for (var product in productList) {
      final priceJson = await fetchProductPrice(product);
      final price = jsonDecode(priceJson);
      total += price;
    }

    return total;
  } catch (err) {
    return -1.0;
  }
}
