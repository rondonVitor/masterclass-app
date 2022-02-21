import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/datasources/product_datasource.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/repositories/product_repository.dart';
import 'package:mocktail/mocktail.dart';

class ProductDatasourceMock extends Mock implements ProductDatasource {}

void main() {
  late IProductRepository productRepository;
  late ProductDatasource productDatasource;

  setUp(() {
    productDatasource = ProductDatasourceMock();
    productRepository = ProductRepository(productDatasource);
  });

  test('deve retornar a lista de produtos', () async {
    Map<String, dynamic> map = json.decode(jsonReturn);

    when(() => productDatasource.getProducts())
        .thenAnswer((_) async => map["products"]);

    final listProducts = await productRepository.getProducts();

    expect(listProducts.isNotEmpty, equals(true));
  });
}

const jsonReturn =
    '{"products":[{"id":"0","title":"Flutter 2"},{"id":"1","title":"React Native"},{"title":"Ionic","id": "2"}]}';
