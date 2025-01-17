import "package:dating_app/common/my_info.dart";
import "package:dating_app/common/opaque_image.dart";
import "package:dating_app/common/profile_info_big_card.dart";
import "package:dating_app/common/profile_info_card.dart";
import "package:dating_app/pages/super_likes_me_page.dart";
import "package:dating_app/styleguide/colors.dart";
import "package:dating_app/styleguide/text_style.dart";
import "package:flutter/material.dart";

class ProfilePage extends StatelessWidget {
  // const name({super.key});
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            Expanded(
              flex: 4,
              child: Stack(
                children: <Widget>[
                  OpaqueImage(
                    imageUrl: "assets/images/anne.jpeg",
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My Profile",
                              textAlign: TextAlign.left,
                              style: headingTextStyle,
                            ),
                          ),
                          MyInfo(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.only(top: 50),
                color: Colors.white,
                child: Table(
                  children: [
                    TableRow(children: [
                      ProfileInfoBigCard(
                        firstText: "13",
                        secondText: "New Matches",
                        icon: Icon(
                          Icons.star,
                          size: 32,
                          color: blueColor,
                        ),
                      ),
                      ProfileInfoBigCard(
                        firstText: "21",
                        secondText: "Unnmatched Me ",
                        icon: Image.asset(
                          "assets/icons/sad_smiley.png",
                          width: 32,
                          color: blueColor,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      ProfileInfoBigCard(
                        firstText: "264",
                        secondText: "All Matches",
                        icon: Image.asset(
                          "assets/icons/checklist.png",
                          width: 32,
                          color: blueColor,
                        ),
                      ),
                      ProfileInfoBigCard(
                        firstText: "42",
                        secondText: "Rematches",
                        icon: Icon(
                          // "assets/icons/sad_smiley.png",
                          Icons.refresh,
                          size: 32,
                          color: blueColor,
                        ),
                      ),
                    ]),
                    TableRow(children: [
                      ProfileInfoBigCard(
                        firstText: "404",
                        secondText: "Profile Visitors",
                        icon: Icon(
                          Icons.remove_red_eye,
                          size: 32,
                          color: blueColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SuperLikesMePage(),
                          ));
                        },
                        child: ProfileInfoBigCard(
                          firstText: "42",
                          secondText: "Super Likes",
                          icon: Icon(
                            // "assets/icons/sad_smiley.png",
                            Icons.favorite,
                            size: 32,
                            color: blueColor,
                          ),
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ),
          ]),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              // color: Colors.green,
              child: Row(
                children: <Widget>[
                  ProfileInfoCard(
                    firstText: "54%",
                    secondText: "Progress",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                      hasImage: true, imagePath: "assets/icons/pulse.png"),
                  SizedBox(
                    width: 10,
                  ),

                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "Level",
                  ),
                  // firstTest
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
