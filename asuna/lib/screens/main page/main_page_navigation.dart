import 'package:flutter/material.dart';
import 'package:asuna/screens/main%20page/xizmatlar.dart';

class MainPageNavigation {
  static final List<MenuItem> menuItems = [
    MenuItem(
      id: 'mening_oilam',
      icon: Icons.people,
      label: 'Mening oilam',
      color: const Color(0xFFFF6B35),
      screen: const MeningOilam(),
    ),
    MenuItem(
      id: 'mening_uyim',
      icon: Icons.home,
      label: 'Mening uyim',
      color: const Color(0xFF8A4FFF),
      screen: const MeningUyim(),
    ),
    MenuItem(
      id: 'mening_avto',
      icon: Icons.directions_car,
      label: 'Mening avto',
      color: const Color(0xFF4FB0FF),
      screen: const MeningAvto(),
    ),
    MenuItem(
      id: 'xayriya',
      icon: Icons.favorite,
      label: 'Xayriya',
      color: const Color(0xFFFF4F4F),
      screen: const Xayriya(),
    ),
    MenuItem(
      id: 'taomlar_yetkazish',
      icon: Icons.fastfood,
      label: 'Taomlar yetkazish',
      color: const Color(0xFFFFB14F),
      screen: const TaomlarYetkazish(),
    ),
    MenuItem(
      id: 'avia_chiptalar',
      icon: Icons.flight,
      label: 'Avia chiptalar',
      color: const Color(0xFF4FFF9F),
      screen: const AviaChiptalar(),
    ),
    MenuItem(
      id: 'kinoteatrga_chiptalar',
      icon: Icons.movie,
      label: 'Kinoteatrga chiptalar',
      color: const Color(0xFF4FFF9F),
      screen: const KinoteatrgaChiptalar(),
    ),
    MenuItem(
      id: 'poverbanklar',
      icon: Icons.battery_charging_full,
      label: 'Poverbnklar',
      color: const Color(0xFF8FFF4F),
      screen: const Poverbanklar(),
    ),
  ];

  static void navigateToScreen(BuildContext context, MenuItem item) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => item.screen),
    );
  }
}

class MenuItem {
  final String id;
  final IconData icon;
  final String label;
  final Color color;
  final Widget screen;

  MenuItem({
    required this.id,
    required this.icon,
    required this.label,
    required this.color,
    required this.screen,
  });
}
