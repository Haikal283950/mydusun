import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mydusun_userapp/constants.dart';
import 'package:mydusun_userapp/screens/home_screen/components/body.dart';
import 'package:mydusun_userapp/model/user.dart';
import 'package:mydusun_userapp/tempFile/tempUser.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User = tempUser.myUser;
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) =>
                [BuildAppBar()],
            body: Body()));
  }

  SliverAppBar BuildAppBar() {
    return SliverAppBar(
      backgroundColor: keyColour,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.notifications_outlined),
          onPressed: () {},
        )
      ],
      title: FittedBox(
        fit: BoxFit.fitWidth,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/images/myDusunGaming.png',
            height: 120,
            width: 120,
          ),
        ),
      ),
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.all(6.5),
        child: buildImage(),
      ),
    );
  }

  Widget buildImage() {
    final image = tempUser.myUser.imagePath;

    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: AssetImage(image),
          fit: BoxFit.cover,
          child: InkWell(onTap: () {}),
        ),
      ),
    );
  }
}
