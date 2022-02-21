import 'package:flutter_test/flutter_test.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/controllers/product_controller.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/models/product_model.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/repositories/product_repository.dart';
import 'package:mocktail/mocktail.dart';

class ProductRepositoryMock extends Mock implements ProductRepository {}

void main() {
  late ProductController productController;
  late ProductRepository productRepository;

  setUp(() {
    productRepository = ProductRepositoryMock();
    productController = ProductController(productRepository);
  });

  test('deve validar se a lista de produtos no controller não está vazia',
      () async {
    final List<ProductModel> responseList = [
      ProductModel(id: '1', title: 'Teste 1'),
      ProductModel(id: '2', title: 'Teste 2'),
    ];

    when(() => productRepository.getProducts())
        .thenAnswer((_) async => responseList);

    await productController.getProducts();

    expect(productController.products.isNotEmpty, equals(true));
  });

  test(
      'deve validar se a lista de produtos no controller está vazia se não vier nada no repository',
      () async {
    final List<ProductModel> responseList = [];

    when(() => productRepository.getProducts())
        .thenAnswer((_) async => responseList);

    await productController.getProducts();

    expect(productController.products.isEmpty, equals(true));
  });
}
