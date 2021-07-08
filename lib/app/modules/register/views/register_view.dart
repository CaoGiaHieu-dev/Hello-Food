import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';
import '../controllers/register_controller.dart';
import 'register_body_view.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        backgroundColor: Vx.white,
        body: <Widget>[
          const RegisterBodyView().centered().expand(flex: 20),
          RichText(
            text: TextSpan(
              style: context.bodyText1.copyWith(),
              children: <InlineSpan>[
                const TextSpan(text: 'Already have an account? '),
                TextSpan(
                  text: 'Sign In',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.back();
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
            .h(
              context.heightScale - _appBar().preferredSize.height - 40,
            )
            .pSymmetric(h: 20)
            .scrollVertical());
  }

  PreferredSizeWidget _appBar() {
    return VxAppBar(
      elevation: 0,
      backgroundColor: Vx.white,
      leading: const Icon(
        Icons.close,
        color: Vx.black,
      ).onInkTap(() {
        Get.back();
      }),
    );
  }
}
