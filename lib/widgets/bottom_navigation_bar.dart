import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

final currentindexProvider = StateProvider<int>((ref) {
  return 0;
});

class bottomNavigationBar extends ConsumerWidget {
  const bottomNavigationBar({
    super.key,
    required this.currentindexs,
  });

  final int currentindexs;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentindexs,
      onTap: (value) {
        ref.read(currentindexProvider.notifier).update((state) => value);
      },
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: "Home"),
        BottomNavigationBarItem(
          label: "Favorate",
          icon: Icon(Icons.favorite_outline),
          activeIcon: Icon(Icons.favorite),
        ),
        BottomNavigationBarItem(
          label: "location",
          icon: Icon(Icons.location_on_outlined),
          activeIcon: Icon(Icons.location_on),
        ),
        BottomNavigationBarItem(
          label: "Notiffication",
          icon: Icon(Icons.notifications_on_outlined),
          activeIcon: Icon(Icons.notifications_on),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(Icons.person_2_outlined),
          activeIcon: Icon(Icons.person_2),
        ),
      ],
    );
  }
}
