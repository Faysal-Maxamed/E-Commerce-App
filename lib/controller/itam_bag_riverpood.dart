import 'package:e_comerce/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<ProductModel> items = [];

class itembagnotifier extends StateNotifier<List<ProductModel>> {
  itembagnotifier() : super(items);
}

final itembagprovider =
    StateNotifierProvider<itembagnotifier, List<ProductModel>>((ref) {
  return itembagnotifier();
});
