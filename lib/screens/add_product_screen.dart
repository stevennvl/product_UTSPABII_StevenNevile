import 'package:flutter/material.dart';
import 'package:product/screens/home_screen.dart';
import 'package:product/services/product_service.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final ProductService _productService = ProductService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Produk"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller1,
                    decoration:
                        const InputDecoration(hintText: 'Masukkan Kode Produk'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller2,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(hintText: 'Masukkan Nama Produk'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: FloatingActionButton(
              onPressed: () {
                _productService.addProductItem(
                    _controller1.text, _controller2.text, context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              backgroundColor: Colors.green,
              elevation: 4,
              splashColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
