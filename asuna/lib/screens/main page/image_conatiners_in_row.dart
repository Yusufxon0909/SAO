import 'package:flutter/material.dart';

class ImageContainerRow extends StatelessWidget {
  final List<String> imageUrls = [
    "https://click.uz/uploads/20240614/ainv889c581d62ef776369f19320e3a3be261718364326.png",
    "https://click.uz/uploads/20240223/ainv1e91950a4e2b3c28e25a9882bc69fa651708673142.png",
    "https://click.uz/uploads/20231114/ainv013a94ff57be874d0d384e7202084daf1699955579.png",
    "https://click.uz/uploads/20230612/ainv15f5fa6f2cb03f0fe3a0f51a4c05451b1686567702.png",
    "https://click.uz/uploads/20231103/ainvb74dfd3d476fd5a850028b3bf21863651699010338.jpg",
    "https://click.uz/uploads/20230502/ainvba15782b33739a633e8fe03e93ab78551683023027.jpg",
    "https://click.uz/uploads/20230504/ainv09c7c07f7bd354b8d2833ee7a9dfbd541683183265.jpg",
    "https://click.uz/uploads/20220729/ainvc644ae017439d9e9e665c6867c5f53b91659078719.png",
    "https://click.uz/uploads/20220203/ainv3f49d1d9d9650c2f4772bc3580ea3a441643894511.jpeg",
    "https://click.uz/uploads/20220201/ainv4ef50f3bf8fae6222833fdd5114d30311643699682.jpg",
    "https://click.uz/uploads/20211014/ainvb063557dbfc9f738bfccb7ee57df31481634210441.jpg",
    "https://click.uz/uploads/20210727/ainvc1dc1a739a966321c3a34c56bc6b9b961627384857.jpg",
    "https://click.uz/uploads/20210518/ainvb9463466960070c89957c6dc4760fd341621327878.jpg",
    "https://click.uz/uploads/20210518/ainvc312fbfef270666f083ac0b8990f93971621327625.jpg",
    "https://click.uz/uploads/20191120/ainv9a34d9ea8014a4c5736d37ca689d4bee1574250229.png",
  ];

  ImageContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 25, bottom: 0, left: 8, right: 8),
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
