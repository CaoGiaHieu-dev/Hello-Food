import 'package:get/get.dart';
import 'package:training/app/configs/config.dart';
import 'package:training/app/modules/detail/controllers/detail_controller.dart';

class DetailBottomView extends GetView<DetailController> {
  const DetailBottomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      const _DetailBottomItem(
        title: '12pm-3pm',
        icon: Icon(
          Icons.timer,
          color: Vx.blue500,
          size: 30,
        ),
      ),
      const _DetailBottomItem(
        title: '3.5 km',
        icon: Icon(
          Icons.directions,
          color: Vx.green500,
          size: 30,
        ),
      ),
      const _DetailBottomItem(
        title: 'Map View',
        icon: Icon(
          Icons.map,
          color: Vx.red500,
          size: 30,
        ),
      ),
      _DetailBottomItem(
        title: 'Delivery',
        icon: Image.asset(
          'assets/icons/ic_app_icon.png',
          height: 30,
        ),
      ),
    ].hStack().pSymmetric(h: 20, v: 10);
  }
}

class _DetailBottomItem extends StatelessWidget {
  const _DetailBottomItem({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      icon,
      10.heightBox,
      title.text
          .textStyle(
            context.bodyText1.copyWith(
              fontSize: 14,
              color: Vx.gray400,
            ),
          )
          .make(),
    ].vStack().expand();
  }
}
