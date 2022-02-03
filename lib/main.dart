import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:masterclass_app/app_widget.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/controllers/product_controller.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/datasources/product_datasource.dart';
import 'package:masterclass_app/modules/design_paterns/challenge1/src/products/repositories/product_repository.dart';
import 'package:masterclass_app/shared/utils/selected_index_navigation.dart';

final getIt = GetIt.instance;

void main() {
  getIt.registerFactory(() => Dio());
  getIt.registerFactory(() => ProductDatasource(getIt.get()));
  getIt.registerFactory<IProductRepository>(
      () => ProductRepository(getIt.get()));
  getIt.registerSingleton(ProductController(getIt.get()));
  getIt.registerSingleton(SelectedIndexNavigation());

  runApp(const AppWidget());
}
