import 'package:e_comerce/controller/product_riverpood.dart';
import 'package:e_comerce/pages/details_page.dart';
import 'package:e_comerce/widgets/bottom_navigation_bar.dart';
import 'package:e_comerce/widgets/card_widget.dart';
import 'package:e_comerce/widgets/chip_widget.dart';
import 'package:e_comerce/widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

final currentindexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(ProductRiverpoodProvider);
    final currentindexs = ref.watch(currentindexProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerWidget(),
              Gap(10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    chipWidget(
                      Tittle: "All",
                    ),
                    Gap(10),
                    chipWidget(
                      Tittle: "Computers",
                    ),
                    Gap(10),
                    chipWidget(
                      Tittle: "Headsets",
                    ),
                    Gap(10),
                    chipWidget(
                      Tittle: "Speakers",
                    ),
                    Gap(10),
                    chipWidget(
                      Tittle: "Telephones",
                    ),
                  ],
                ),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hot Sales",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("See all"),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 290,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => DetailsPage(indexs: index))),
                        child: cardWidget(indexs: index));
                  },
                ),
              ),
              GridView.builder(
                  itemCount: product.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => DetailsPage(
                              indexs: index,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 260,
                        child: cardWidget(
                          indexs: index,
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(currentindexs: currentindexs),
    );
  }
}
