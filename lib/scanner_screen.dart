// import 'package:flutter/material.dart';
// import 'package:qr_bar_code/qr_bar_code.dart';
//
// class ScannerScreen extends StatefulWidget {
//   const ScannerScreen({super.key});
//
//   @override
//   State<ScannerScreen> createState() => _ScannerScreenState();
// }
//
// class _ScannerScreenState extends State<ScannerScreen> {
//   String scannedData = 'Scan something';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("QR Bar Code Scanner"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               scannedData,
//               style: const TextStyle(fontSize: 20),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: const Icon(Icons.qr_code_scanner),
//               label: const Text("Start Scanner"),
//               onPressed: () async {
//                 final result = await Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     // builder: (context) =>  QRBarCodeScanner(),
//                   ),
//                 );
//
//                 if (result != null && result is String) {
//                   setState(() {
//                     scannedData = "Scanned: $result";
//                   });
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
