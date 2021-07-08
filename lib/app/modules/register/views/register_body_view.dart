import 'package:get/get.dart' hide ContextExtensionss;
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/commons/textfield_commons.dart';
import 'package:training/app/modules/register/controllers/register_controller.dart';

class RegisterBodyView extends GetView<RegisterController> {
  const RegisterBodyView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      Image.asset(
        'assets/icons/ic_food_express.png',
      )
          .wh(context.widthScale * 2 / 5, context.heightScale / 10)
          .pSymmetric(v: 20, h: 20),
      <Widget>[
        const TextFieldCommons(
          hint: 'First Name',
        ).expand(),
        10.widthBox,
        const TextFieldCommons(
          hint: 'Last Name',
        ).expand(),
      ].hStack(),
      20.heightBox,
      const TextFieldCommons(
        hint: 'Phone number',
        prefixIcon: Icon(Icons.phone),
      ),
      20.heightBox,
      const TextFieldCommons(
        hint: 'Invitation Code',
        prefixIcon: Icon(Icons.code),
      ),
      <Widget>[
        VxCircle(
          border: Border.all(color: Vx.black),
          backgroundColor: Vx.white,
          child: 'i'
              .text
              .align(TextAlign.center)
              .textStyle(
                context.bodyText1.copyWith(
                  color: Vx.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
              .make()
              .box
              .alignCenter
              .make(),
        ).wh(20, 20),
        10.widthBox,
        "Leave empty if you don't have Invation Code"
            .text
            .gray500
            .align(TextAlign.left)
            .textStyle(context.bodyText1)
            .make()
            .pSymmetric(v: 20),
      ].hStack(),
      'sign up'
          .text
          .uppercase
          .white
          .textStyle(
            context.bodyText1.copyWith(
              fontSize: 24,
            ),
          )
          .make()
          .box
          .height(50)
          .withDecoration(
            const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Vx.pink600,
                  Vx.orange400,
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          )
          .alignCenter
          .make()
          .onInkTap(
            () {},
          ),
      <Widget>[
        const VxDivider(
          width: 2,
        )
            .w(context.widthScale / 3)
            .box
            .withDecoration(
              const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: <Color>[
                    Vx.gray300,
                    Vx.gray100,
                  ],
                ),
              ),
            )
            .make(),
        'Or'.text.make(),
        const VxDivider(
          width: 2,
        )
            .w(context.widthScale / 3)
            .box
            .withDecoration(
              const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    Vx.gray300,
                    Vx.gray100,
                  ],
                ),
              ),
            )
            .make(),
      ].hStack(alignment: MainAxisAlignment.spaceEvenly).pSymmetric(v: 20),
      <Widget>[
        VxCircle(
          backgroundColor: Vx.pink500,
          child: 'f'
              .text
              .align(TextAlign.center)
              .textStyle(
                context.bodyText1.copyWith(
                  color: Vx.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
              .make()
              .box
              .alignCenter
              .make(),
        ).wh(context.widthScale / 4, context.heightScale / 15),
        VxCircle(
          backgroundColor: Vx.pink500,
          child: 'G'
              .text
              .align(TextAlign.center)
              .textStyle(
                context.bodyText1.copyWith(
                  color: Vx.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              )
              .make()
              .box
              .alignCenter
              .make(),
        ).wh(context.widthScale / 4, context.heightScale / 15),
      ].hStack(alignment: MainAxisAlignment.center)
    ].vStack(
      crossAlignment: CrossAxisAlignment.stretch,
    );
  }
}
