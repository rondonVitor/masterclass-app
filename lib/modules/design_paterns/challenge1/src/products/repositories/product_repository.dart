import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/datasources/product_datasource.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/models/product_model.dart';

abstract class IProductRepository {
  Future<List<ProductModel>> getProducts();
}

class ProductRepository implements IProductRepository {
  final ProductDatasource _productDatasource;

  ProductRepository(
    this._productDatasource,
  );

  @override
  Future<List<ProductModel>> getProducts() async {
    List list = await _productDatasource.getProducts();
    final products = list.map(ProductModel.fromJson).toList();
    return products;
  }
}
