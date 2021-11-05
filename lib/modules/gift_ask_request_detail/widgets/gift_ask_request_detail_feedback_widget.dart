// import 'dart:ui';

// import 'package:alokito_new/modules/gift_ask_request_detail/controllers/gift_ask_request_detail_controller.dart';

// import '../../../../models/gift_request/gift_request.dart';
// import '../../../../shared/config.dart';
// import '../../../../shared/widget/my_text.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class GiftAskRequestDetailFeedbackWidget extends StatelessWidget {
//   GiftAskRequestDetailFeedbackWidget({Key? key, required this.giftReceiver, required this.isRequester}) : super(key: key);

//   final bool isRequester;
//   final GiftRequest? giftReceiver;

//   final GiftAskRequestDetailController controller = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return BackdropFilter(
//       filter: ImageFilter.blur(sigmaX: 10.5, sigmaY: 10.5),
//       child: Dialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         child: Container(
//           // height: 800,
//           // width: Get.size.width,
//           decoration: BoxDecoration(
//             image: const DecorationImage(image: AssetImage('assets/images/submit-feedback.png'), fit: BoxFit.fill),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: SingleChildScrollView(
//             child: Column(
//               children: [
//                 const SizedBox(height: 8),
//                 CircleAvatar(
//                   backgroundImage: NetworkImage(giftReceiver!.requester.imageUrl),
//                   radius: 30,
//                 ),
//                 const SizedBox(height: 8),
//                 MyText(giftReceiver!.requester.userName),
//                 Padding(
//                   padding: const EdgeInsets.all(8),
//                   child: TextField(
//                     decoration: InputDecoration(
//                         border: const OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.all(Radius.circular(10)),
//                         ),
//                         fillColor: Colors.grey[400],
//                         // hoverColor: Colors.grey,
//                         filled: true,
//                         hintText: 'e.g. Thanks in advance for your kind consideration'),
//                     maxLines: 3,
//                     onChanged: (value) => {
//                       isRequester
//                           ? controller.messageForGiver.value = value
//                           : controller.messageForRequester.value = value,
//                     },
//                     onSubmitted: (value) => {},
//                   ),
//                 ),
//                 _RatingWidget(isRequester: isRequester),
//                 MaterialButton(
//                   color: giftAddFormSubmitColor,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//                   onPressed: () {},
//                   child: const Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 30),
//                     child: Text('send'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _RatingWidget extends StatelessWidget {
//   _RatingWidget({Key? key, required this.isRequester}) : super(key: key);

//   bool isRequester;

//   final GiftGiverNotificationController controller = Get.find();

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         for (int i = 0; i < 5; i++)
//           Obx(
//             () => IconButton(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               constraints: const BoxConstraints(maxWidth: 30),
//               key: ValueKey(i.toString()),
//               onPressed: () {
//                 isRequester ? controller.giverRating.value = i + 1 : controller.requesterRating.value = i + 1;

//                 print(controller.giverRating.value);
//                 print(controller.requesterRating.value);
//               },
//               icon: Icon(
//                 Icons.star,
//                 color: isRequester
//                     ? i < controller.giverRating.value
//                         ? Colors.orange
//                         : Colors.black
//                     : i < controller.requesterRating.value
//                         ? Colors.orange
//                         : Colors.black,
//               ),
//             ),
//           ),
//       ],
//     );
//   }
// }
