
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class cardWidget extends StatelessWidget {
  const cardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              child: Image.asset("images/2.png"),
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
                  "Air pords",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                Text(
                  "Wining Beats sound  ",
                  style: TextStyle(
                      fontSize: 13, color: Colors.grey.shade500),
                  overflow: TextOverflow.ellipsis,
                ),
                Gap(4),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text("199"),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(100)),
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
