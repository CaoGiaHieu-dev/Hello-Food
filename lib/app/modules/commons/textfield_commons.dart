import 'package:training/app/configs/config.dart';

class TextFieldCommons extends StatelessWidget {
  const TextFieldCommons(
      {Key? key, this.hint, this.prefixIcon, this.isPassword = false})
      : super(key: key);
  final String? hint;
  final Widget? prefixIcon;
  final bool isPassword;
  @override
  Widget build(BuildContext context) {
    return VxTextField(
      hint: hint,
      prefixIcon: prefixIcon,
      isPassword: isPassword,
      contentPaddingTop: 30,
      contentPaddingLeft: 20,
      borderColor: Colors.transparent,
      borderRadius: 10,
      borderType: VxTextFieldBorderType.roundLine,
    );
  }
}
