import 'package:alokito_new/modules/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 0.7.sw,
          decoration: BoxDecoration(
            // color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.transparent.withOpacity(.95),
                  BlendMode.dstIn,
                ),
                image: const AssetImage('assets/images/drawer_bg.png')),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.r),
                child: Container(
                  color: Colors.blue,
                  height: 50.h,
                  width: 130.w,
                  alignment: Alignment.center,
                  child: Text(
                    'Logo',
                    style: TextStyle(fontSize: 30.sp),
                  ),
                ),
              ),
              Row(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                      child: Image.network(
                        Get.find<AuthController>().currentUser.value.imageUrl ?? '',
                        errorBuilder: (_, ob, st) {
                          return const SizedBox();
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Column(
//         // Important: Remove any padding from the ListView.
//         // padding: EdgeInsets.zero,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           const DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Text('Drawer Header'),
//           ),
//           ListTile(
//             title:const Text('Home'),
//             onTap: () {
//               // Get.offAll(() =>)
//               Get.to(() => InitialView());
//               // Get.toNamed('/');
//             },
//           ),
//           ListTile(
//             title: const Text('Sign Out'),
//             onTap: () {
//               // Update the state of the app.
//               // ...
//             },
//           ),
//         ],
//       ),
