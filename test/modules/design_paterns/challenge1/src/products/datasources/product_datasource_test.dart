import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/datasources/product_datasource.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements DioForNative {}

void main() {
  late Dio dio;
  late ProductDatasource productDatasource;

  setUp(() {
    dio = DioMock();
    productDatasource = ProductDatasource(dio);
  });

  test('deve retornar o json de produtos', () async {
    final response = Response<dynamic>(
      data: jsonDecode(jsonReturn),
      requestOptions: RequestOptions(
        path:
            'https://my-json-server.typicode.com/rondonVitor/json-server-products/products',
        headers: {
          Headers.contentTypeHeader: [Headers.jsonContentType],
        },
      ),
      statusCode: 200,
    );

    when(() => dio.get(
            'https://my-json-server.typicode.com/rondonVitor/json-server-products/products'))
        .thenAnswer((_) async => response);

    final produtos = await productDatasource.getProducts();

    expect(produtos, jsonDecode(jsonReturn));
  });
}

const jsonReturn =
    '{"products":[{"id":"0","title":"Flutter 2"},{"id":"1","title":"React Native"},{"title":"Ionic","id": "2"}]}';
