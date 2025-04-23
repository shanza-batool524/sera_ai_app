// import 'dart:developer';
//
//
//
// import 'package:get/get.dart';
// import 'package:sera_ai_app/routers/routers_name.dart';
//
// class SplashServices {
//   void isLogin() async {
//     SessionController().getUserPreference().then((onValue) {
//       if (SessionController().isLogin ?? false) {
//         log("isLogin" + " " + SessionController().isLogin.toString());
//         Future.delayed(Duration(seconds: 0), () {
//           Get.offNamed(RouteName.landingView);
//         });
//       } else {
//         Future.delayed(Duration(seconds: 0), () {
//           // Get.offAll(() => LoginAuthView());
//           Get.offAllNamed(RouteName.loginView);
//         });
//       }
//     }).onError((handleError, error) {
//       log(error.toString());
//       Future.delayed(Duration(seconds: 1), () {
//         // Get.offAll(() => LoginAuthView());
//         Get.offAllNamed(RouteName.loginView);
//       });
//     });
//   }
// }
