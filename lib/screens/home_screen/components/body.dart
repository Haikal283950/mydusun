import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mydusun_userapp/constants.dart';
import 'package:mydusun_userapp/screens/dusunDetail/dusunDetail.dart';
import 'package:mydusun_userapp/screens/home_screen/home.dart';
import 'package:mydusun_userapp/tempFile/dusunData.dart';
import 'package:mydusun_userapp/tempFile/tempUser.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(child: buildColumn(size));
  }

  Column buildColumn(Size size) {
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.14,
          decoration: BoxDecoration(
            color: keyColour,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(41),
                bottomRight: Radius.circular(41)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: buildText(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                buildSearchBar(),
                SizedBox(
                  height: 16,
                ),
                buildFruitSlider(),
                SizedBox(
                  height: 30,
                ),
                BuildFeaturedDusuns(),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: 400,
                  height: 175,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: DusunData.FEATURED_DUSUN_DATA.length,
                    itemBuilder: (context, index) {
                      return buildList(index, context);
                    },
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: 'Nearest Dusuns',
                          style: TextStyle(
                              fontFamily: 'Open_Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: secondaryColour,
                              height: 1.1),
                          children: [
                            TextSpan(
                              text: '\nThese are the dusuns that are near you!',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w100),
                            )
                          ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: 400,
                  height: 175,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: DusunData.FEATURED_DUSUN_DATA.length,
                    itemBuilder: (context, index) {
                      return buildList(index, context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container buildList(int index, BuildContext context) {
    return Container(
      width: 335,
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    color: shadesColour,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text.rich(TextSpan(
                        text: DusunData.FEATURED_DUSUN_DATA[index].dusunName,
                        style: TextStyle(
                          fontFamily: 'Open_Sans',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: backgroundColour,
                        ))),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DusunDetail(
                                dusun: DusunData.FEATURED_DUSUN_DATA[index],
                                index: index),
                          ));
                    },
                    child: Ink.image(
                        height: 200,
                        image: AssetImage(
                          DusunData.FEATURED_DUSUN_DATA[index].dusunImage,
                        ),
                        fit: BoxFit.fitWidth),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row BuildFeaturedDusuns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
              text: 'Featured Dusuns',
              style: TextStyle(
                  fontFamily: 'Open_Sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: secondaryColour,
                  height: 1.1),
              children: [
                TextSpan(
                  text: '\nThese are the dusuns that are currently popular!',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w100),
                )
              ]),
        )
      ],
    );
  }

  SingleChildScrollView buildFruitSlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipOval(
            child: Container(
              width: 65,
              height: 65,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }

  TextField buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
          hintStyle: TextStyle(fontFamily: 'Open_Sans', color: Colors.grey),
          hintText: 'Search for a dusun here!',
          prefixIcon: Icon(
            Icons.search_outlined,
            size: 25,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24))),
    );
  }

  Row buildText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
              text: 'Welcome back',
              style: TextStyle(
                  fontFamily: 'Open_Sans',
                  fontWeight: FontWeight.w100,
                  color: backgroundColour,
                  fontSize: 25,
                  height: 1.1),
              children: [
                TextSpan(
                  text: ' \n' + tempUser.myUser.firstName + "!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
