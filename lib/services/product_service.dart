import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProductService {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('product_list');

  Stream<Map<String, String>> getProductList() {
    return _database.onValue.map((event) {
      final Map<String, String> items = {};
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              'Kode Produk\t\t\t\t\t\t: ${value['code']} \nNama Produk\t\t\t\t: ${value['name']}';
        });
      }
      return items;
    });
  }

  void addProductItem(String code, name, BuildContext context) {
    if (name.isEmpty || code.isEmpty) {
      const warning = SnackBar(content: Text("Data yang diinput harus diisi"));
      ScaffoldMessenger.of(context).showSnackBar(warning);
    } else {
      _database.push().set({'code': code, 'name': name});
    }
  }

  Future<void> removeProductItem(String key) async {
    await _database.child(key).remove();
  }
}
