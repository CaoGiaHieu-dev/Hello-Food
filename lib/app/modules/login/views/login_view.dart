import 'package:flutter/gestures.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/routes/app_pages.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/login_controller.dart';
import 'login_body.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Vx.white,
        body: <Widget>[
          const LoginBody().centered().expand(flex: 20),
          RichText(
            text: TextSpan(
              style: context.bodyText1.copyWith(),
              children: <InlineSpan>[
                const TextSpan(text: "Don't have an account? "),
                TextSpan(
                  text: 'Sign Up',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.toNamed(Routes.REGISTER);
                    },
                  style: context.bodyText1.copyWith(
                    color: Vx.pink400,
                  ),
                ),
              ],
            ),
          ).expand(flex: 1)
        ]
            .vStack(alignment: MainAxisAlignment.center)
            .pSymmetric(h: 20)
            .h(context.heightScale)
            .scrollVertical());
  }
}
