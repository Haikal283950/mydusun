import 'package:flutter/material.dart';
import 'package:mydusun_userapp/model/dusun.dart';
import 'package:mydusun_userapp/tempFile/dusunData.dart';
import 'package:mydusun_userapp/constants.dart';

class DusunDetail extends StatelessWidget {
  final Dusun dusun;
  final int index;
  const DusunDetail({super.key, required this.dusun, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Container(
              height: 62,
              color: Color.fromARGB(255, 66, 6, 66),
            ),
            Container(
              height: 239,
              width: 500,
              child: Image(
                image: AssetImage(dusun.dusunImage),
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: dusun.dusunName,
                              style: TextStyle(
                                  fontFamily: 'Open_Sans',
                                  fontWeight: FontWeight.bold,
                                  color: secondaryColour,
                                  fontSize: 33)),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text.rich(TextSpan(
                            text: 'Currently on stock',
                            style: TextStyle(
                                fontWeight: FontWeight.w100,
                                color: secondaryColour)))
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Container(
                      width: 300,
                      height: 300,
                      child: ListView.builder(
                        itemCount: dusun.stockFruits.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Card(
                                elevation: 50,
                                clipBehavior: Clip.antiAlias,
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
