import 'package:flutter/material.dart';

class JoylardaTolov extends StatefulWidget {
  const JoylardaTolov({super.key});

  @override
  State<JoylardaTolov> createState() => _JoylardaTolovState();
}

class _JoylardaTolovState extends State<JoylardaTolov> {
  List<JoyTolov> joytolovlist = [
    JoyTolov(
      image:
          "https://i.pinimg.com/564x/8a/8b/15/8a8b15ff6374fe4e2457aac5460b7f12.jpg",
      name: "PFC Turon",
      distance: "838 m",
    ),
    JoyTolov(
      image:
          "https://avatars.mds.yandex.net/get-altay/13499585/2a0000018f03840b5f8c810de542d6454898/M_height",
      name: "OQ TEPA MASJIDI",
      distance: "910 m",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 20, 17, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Joylarda to'lov",
                style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AllJoylarTolov(joytolovlist: joytolovlist)),
                  );
                },
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
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: joytolovlist.length > 2 ? 2 : joytolovlist.length,
          itemBuilder: (context, index) {
            return placeDesign(joytolovlist[index]);
          },
        ),
      ],
    );
  }

  Widget placeDesign(tolov) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(tolov.image),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tolov.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.navigation_outlined,
                      color: Colors.grey[700],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      tolov.distance,
                      style: TextStyle(color: Colors.grey[600], fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// class JoylardaTolov extends StatefulWidget {
//   const JoylardaTolov({super.key});

//   @override
//   State<JoylardaTolov> createState() => _JoylardaTolovState();
// }

// class _JoylardaTolovState extends State<JoylardaTolov> {
//   List joytolovlist = [
//     JoyTolov(
//       image:
//           "https://i.pinimg.com/564x/8a/8b/15/8a8b15ff6374fe4e2457aac5460b7f12.jpg",
//       name: "PFC Turon",
//       distance: "838 m",
//     ),
//     JoyTolov(
//       image:
//           "https://avatars.mds.yandex.net/get-altay/13499585/2a0000018f03840b5f8c810de542d6454898/M_height",
//       name: "OQ TEPA MASJIDI",
//       distance: "910 m",
//     ),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.fromLTRB(15, 20, 17, 15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Joylarda to'lov",
//                 style: TextStyle(
//                     color: Colors.grey[300],
//                     fontWeight: FontWeight.w500,
//                     fontSize: 15),
//               ),
//               GestureDetector(
//                 onTap: () {},
//                 child: const Row(
//                   children: [
//                     Text(
//                       'Hammasi',
//                       style: TextStyle(
//                           color: Color(0xFF2979FF),
//                           fontWeight: FontWeight.w500,
//                           fontSize: 15),
//                     ),
//                     SizedBox(width: 3),
//                     Icon(
//                       Icons.arrow_forward_ios,
//                       color: Color(0xFF2979FF),
//                       size: 13,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         ListView.builder(
//           itemBuilder: (context, index) {
//             joytolovlist.map((tolov) => placeDesign(tolov)).toList();
//           },
//         ),
//       ],
//     );
//   }

// }
class AllJoylarTolov extends StatelessWidget {
  final List<JoyTolov> joytolovlist;

  const AllJoylarTolov({super.key, required this.joytolovlist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Barcha Joylar"),
      ),
      body: ListView.builder(
        itemCount: joytolovlist.length,
        itemBuilder: (context, index) {
          return placeDesign(joytolovlist[index]);
        },
      ),
    );
  }

  Widget placeDesign(tolov) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(tolov.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tolov.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.navigation_outlined,
                    color: Colors.grey[700],
                  ),
                  const SizedBox(width: 5),
                  Text(
                    tolov.distance,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JoyTolov {
  String? image;
  String? name;
  String? distance;
  JoyTolov({
    this.image,
    this.name,
    this.distance,
  });
}
