import 'package:asuna/screens/main%20page/main_page_navigation.dart';
import 'package:flutter/material.dart';

class XizmatlarMenu extends StatelessWidget {
  const XizmatlarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Xizmatlar',
                style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              GestureDetector(
                onTap: () {},
                child: const Row(
                  children: [
                    Text(
                      'Hammasi',
                      style: TextStyle(
                          color: Color(0xFF2979FF),
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    SizedBox(width: 3),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF2979FF),
                      size: 13,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            final double itemWidth = constraints.maxWidth / 4;
            final double itemHeight = itemWidth * 1.1;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: itemWidth / itemHeight,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: MainPageNavigation.menuItems.length,
                itemBuilder: (context, index) {
                  final item = MainPageNavigation.menuItems[index];
                  return GridMenuItem(item: item);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

class GridMenuItem extends StatelessWidget {
  final MenuItem item;

  const GridMenuItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MainPageNavigation.navigateToScreen(context, item),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(item.icon, size: 35, color: item.color),
          const SizedBox(height: 8),
          Text(
            item.label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
