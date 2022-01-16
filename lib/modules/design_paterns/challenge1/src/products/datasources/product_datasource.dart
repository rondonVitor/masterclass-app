import 'package:dio/dio.dart';

class ProductDatasource {
  final Dio _dio;

  ProductDatasource(
    this._dio,
  );

  Future<dynamic> getProducts() async {
    final response = await _dio.get(
        'https://my-json-server.typicode.com/rondonVitor/json-server-products/products');
    return response.data;
  }
}
