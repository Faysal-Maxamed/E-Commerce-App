import 'package:e_comerce/models/product_model.dart';
import 'package:riverpod/riverpod.dart';

class ProductRiverpood extends StateNotifier<List<ProductModel>> {
  ProductRiverpood() : super(listProductModel);
}

final ProductRiverpoodProvider = StateNotifierProvider<ProductRiverpood,List<ProductModel>>((ref) {
  return ProductRiverpood();
});
