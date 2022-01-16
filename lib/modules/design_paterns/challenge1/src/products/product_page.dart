import 'package:flutter/material.dart';
import 'package:masterclass_app/main.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/controllers/product_controller.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final controller = getIt.get<ProductController>();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });

    controller.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          final product = controller.products[index];
          return ListTile(
            title: Text(product.title),
            subtitle: Text(product.id),
          );
        },
      ),
    );
  }
}
