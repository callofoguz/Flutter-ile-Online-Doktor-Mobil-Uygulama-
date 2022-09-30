// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class OrderTrackingPage extends StatefulWidget {
//   const OrderTrackingPage({Key? key}) : super(key: key);

//   @override
//   State<OrderTrackingPage> createState() => OrderTrackingPageState();
// }

// class OrderTrackingPageState extends State<OrderTrackingPage> {
//   final Completer<GoogleMapController> _controller = Completer();

//   static const LatLng sourceLocation = LatLng(37.3333, -122.032);
//   static const LatLng destination = LatLng(37.33555, -1222.0666);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "TracL Order",
//           style: TextStyle(color: Colors.black, fontSize: 16),
//         ),
//       ),
//       body: GoogleMap(
//         initialCameraPosition:
//             CameraPosition(target: sourceLocation, zoom: 14.5),
//       ),
//     );
//   }
// }
