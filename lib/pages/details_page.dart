import 'package:e_comerce/controller/product_riverpood.dart';
import 'package:e_comerce/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.indexs});
  final indexs;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(ProductRiverpoodProvider);
    final currentindexs = ref.watch(currentindexProvider);
    return Scaffold(
        appBar: AppBar(
          title: Text("Details page"),
          backgroundColor: Colors.indigo,
          centerTitle: true,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 270,
              width: double.infinity,
              color: Colors.greenAccent.shade100,
              child: Image.asset(product[indexs].imageurl),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product[indexs].title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        );
                      },
                    ),
                  ),
                  Text(
                    product[indexs].longDisc,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " ${product[indexs].price * product[indexs].qty} ",
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              ref
                                  .read(ProductRiverpoodProvider.notifier)
                                  .decrement(product[indexs].id);
                            },
                            icon: Icon(Icons.do_not_disturb_on_outlined),
                          ),
                          Text(product[indexs].qty.toString()),
                          IconButton(
                              onPressed: () {
                                ref
                                    .read(ProductRiverpoodProvider.notifier)
                                    .increment(product[indexs].id);
                              },
                              icon: Icon(Icons.add_circle_outline))
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(" Add items to bag"),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(currentindexs: currentindexs));
  }
}
