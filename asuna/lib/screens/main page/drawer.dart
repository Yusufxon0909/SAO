// import 'package:flutter/material.dart';

// class TheDrawer extends StatelessWidget {
//   const TheDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: const Color(0xFF1A1A1A),
//       child: Column(
//         children: [
//           _buildHeader(),
//           Expanded(
//             child: ListView(
//               padding: EdgeInsets.zero,
//               children: [
//                 _buildMenuItem(Icons.notifications_outlined, 'Obunalar'),
//                 _buildMenuItem(Icons.security_outlined, 'Xavfsizlik'),
//                 _buildMenuItem(Icons.settings_outlined, 'Sozlamalar'),
//                 _buildMenuItem(
//                     Icons.headset_mic_outlined, "Qo'llab-quvvatlash xizmati"),
//                 _buildMenuItem(Icons.info_outline, 'Dastur haqida'),
//                 _buildPremiumButton(),
//               ],
//             ),
//           ),
//           _buildBottomButtons(),
//         ],
//       ),
//     );
//   }

//   Widget _buildHeader() {
//     return Container(
//       padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
//       color: const Color(0xFF1A1A1A),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 backgroundColor: Colors.white,
//                 child: Icon(Icons.person, size: 40, color: Colors.blue[800]),
//               ),
//               const SizedBox(width: 8),
//               const Icon(Icons.check_circle, color: Colors.white),
//             ],
//           ),
//           const SizedBox(height: 8),
//           const Text(
//             'JAMOLIDDIN VAXOBOV',
//             style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           const Text(
//             '+998 90 570 89 23',
//             style: TextStyle(color: Colors.white70),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMenuItem(IconData icon, String title) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.blue[800]),
//       title: Text(
//         title,
//         style: TextStyle(color: Colors.white),
//       ),
//       dense: true,
//     );
//   }

//   Widget _buildPremiumButton() {
//     return Container(
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.amber,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: const ListTile(
//         leading: Icon(Icons.star, color: Colors.white),
//         title: Text(
//           'Click Premium',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         subtitle: Text(
//           "Bepul o'tkazmalar, to'lovlar uchun ikki karra cashback va boshqa takliflar",
//           style: TextStyle(color: Colors.white, fontSize: 12),
//         ),
//       ),
//     );
//   }

//   Widget _buildBottomButtons() {
//     return Container(
//       color: Colors.grey[200],
//       child: Column(
//         children: [
//           ListTile(
//             leading: Icon(Icons.share, color: Colors.blue[800]),
//             title: const Text('Ilovani ulashish'),
//             dense: true,
//           ),
//           ListTile(
//             leading: Icon(Icons.phone, color: Colors.blue[800]),
//             title: const Text("Click bilan bog'lanish"),
//             dense: true,
//           ),
//         ],
//       ),
//     );
//   }
// }
