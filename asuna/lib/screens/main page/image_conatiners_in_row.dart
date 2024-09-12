import 'package:flutter/material.dart';

class ImageContainerRow extends StatelessWidget {
  final List<String> imageUrls = [
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fxabar.uz%2Fuz%2Ftexnologiya%2Fclick-kartadan-kartaga-bepul&psig=AOvVaw0hLOY6AdgKg89QDIDUEopj&ust=1726230573088000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIDXrJS0vYgDFQAAAAAdAAAAABAP',
  ];

  ImageContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 30, left: 8, right: 8),
        child: Row(
          children: imageUrls.map((url) => _buildImageContainer(url)).toList(),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 110,
        height: 110,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF2979FF), width: 2),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
