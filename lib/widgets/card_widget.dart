import 'package:e_comerce/controller/product_riverpood.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class cardWidget extends ConsumerWidget {
  const cardWidget({super.key, required this.indexs});

  final int indexs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(ProductRiverpoodProvider);
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 6),
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
              ),
              child: Image.asset(product[indexs].imageurl),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product[indexs].title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Wining Beats sound  ",
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                  overflow: TextOverflow.ellipsis,
                ),
                Gap(4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product[indexs].price.toString()),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            ref
                                .read(ProductRiverpoodProvider.notifier)
                                .isselecteditem(product[indexs].id, indexs);
                          },
                          icon: Icon(product[indexs].isselected
                              ? Icons.check
                              : Icons.add),
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                    )
                  ],
                ),
                Gap(10)
              ],
            ),
          )
        ],
      ),
    );
  }
}
