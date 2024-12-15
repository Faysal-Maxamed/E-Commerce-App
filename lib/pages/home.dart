import 'package:e_comerce/widgets/bottom.dart';
import 'package:e_comerce/widgets/card_widget.dart';
import 'package:e_comerce/widgets/chip_widget.dart';
import 'package:e_comerce/widgets/container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class HomeScreen extends ConsumerWidget {
   HomeScreen({super.key});

  int current = 1;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
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
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return cardWidget();
                  },
                ),
              ),
              GridView.builder(
                  itemCount: 6,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 260,
                      child: cardWidget(),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: Bottom()
    );
  }
}
