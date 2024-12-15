import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int current = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: current,
      onTap: (fey) {
        current = fey;
        setState(() {});
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Home",
          activeIcon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: "favorite",
          activeIcon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.maps_ugc),
          label: "maps",
          activeIcon: Icon(Icons.maps_ugc),
        )
      ],
    );
  }
}
