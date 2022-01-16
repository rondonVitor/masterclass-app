import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/models/product_model.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/repositories/product_repository.dart';

class ProductController extends ChangeNotifier {
  final IProductRepository _productRepository;
  var products = <ProductModel>[];

  ProductController(
    this._productRepository,
  );

  Future<void> getProducts() async {
    products = await _productRepository.getProducts();
    notifyListeners();
  }
}
