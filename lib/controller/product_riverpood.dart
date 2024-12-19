import 'package:e_comerce/models/product_model.dart';
import 'package:riverpod/riverpod.dart';

class ProductRiverpood extends StateNotifier<List<ProductModel>> {
  ProductRiverpood() : super(listProductModel);

  void isselecteditem(int id, int index) {
    state = [
      for (final product in state)
        if (product.id == id)
          product.copyWith(isselected: !state[index].isselected)
        else
          product,
    ];
  }

  void increment(int id) {
    state = [
      for (final product in state)
        if (product.id == id)
          product.copyWith(qty: product.qty + 1)
        else
          product
    ];
  }

  void decrement(int id) {
    state = [
      for (final product in state)
        if (product.id == id)
          product.copyWith(qty: product.qty - 1)
        else
          product
    ];
  }
}

final ProductRiverpoodProvider =
    StateNotifierProvider<ProductRiverpood, List<ProductModel>>((ref) {
  return ProductRiverpood();
});
