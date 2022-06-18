// import 'package:flutter/material.dart';

// import '../module/catalog.dart';

// class ItemWidget extends StatefulWidget {
//   final Item item;
//   const ItemWidget({
//     Key? key,
//     required this.item,
//   })  : assert(item != null),
//         super(key: key);

//   @override
//   State<ItemWidget> createState() => _ItemWidgetState();
// }

// class _ItemWidgetState extends State<ItemWidget> {
//   BorderRadius radius = BorderRadius.circular(10);
//   double height = 30;
//   double width = 80;
  
//   buttonAnimation(BuildContext context) async {
//     height = 30;
//     width = 60;
//     setState(() {});
//     await Future.delayed(Duration(milliseconds: 100));
//     height = 30;
//     width = 80;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4.0,
//       child: ListTile(
//         onTap: (() => {print("Amartya and Shivam")}),
//         tileColor: Colors.white,
//         leading: Image.network(
//           widget.item.image,
//         ),
//         subtitle: Text(
//           widget.item.desc,
//           textScaleFactor: 1.0,
//         ),
//         title: Text(
//           widget.item.name,
//           textScaleFactor: 1.3,
//         ),
//         trailing: AnimatedContainer(
//           duration: Duration(milliseconds: 100),
//           height: height,
//           width: width,
//           child: Material(
//             elevation: 4.0,
//             borderRadius: radius,
//             color: Colors.deepPurple,
//             child: InkWell(
//               onTap: () => buttonAnimation(context),
//               borderRadius: radius,
//               child: Center(
//                 child: Text(
//                   "\$${widget.item.price}",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
