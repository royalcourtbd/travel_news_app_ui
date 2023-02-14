import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_news_app_ui/app_style.dart';
import 'package:travel_news_app_ui/config.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      backgroundColor: kLighterWhiteColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
          children: [
            SizedBox(
              height: Config.blockSizeVertical! * 1,
            ),
            Row(
              children: [
                Container(
                  height: Config.blockSizeHorizontal! * 13,
                  width: Config.blockSizeHorizontal! * 13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      kBorderRadius,
                    ),
                    color: kLightBlueColor,
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://cdn3d.iconscout.com/3d/premium/thumb/boy-avatar-6299533-5187865.png,',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Config.blockSizeHorizontal! * 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: kPoppinsBold.copyWith(
                        fontSize: Config.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Monday, 3 October',
                      style: kPoppinsRegular.copyWith(
                        color: kGreyColor,
                        fontSize: Config.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: Config.blockSizeVertical! * 3,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kDarkBlueColor.withOpacity(0.051),
                    offset: Offset(0.0, 3),
                    blurRadius: 24,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: kPoppinsRegular.copyWith(
                        color: kBlueColor,
                        fontSize: Config.blockSizeHorizontal! * 3,
                      ),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 13,
                        ),
                        border: kBorder,
                        errorBorder: kBorder,
                        enabledBorder: kBorder,
                        focusedBorder: kBorder,
                        disabledBorder: kBorder,
                        focusedErrorBorder: kBorder,
                        hintText: 'Search for article...',
                        hintStyle: kPoppinsRegular.copyWith(
                            color: kLightGreyColor,
                            fontSize: Config.blockSizeHorizontal! * 3),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/search_icon.svg',
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Config.blockSizeVertical! * 2,
            ),
            SizedBox(
              height: Config.blockSizeVertical! * 2,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      right: 38,
                    ),
                    child: Text(
                      '#Health',
                      style: kPoppinsMedium.copyWith(
                        color: kGreyColor,
                        fontSize: Config.blockSizeHorizontal! * 3,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: Config.blockSizeVertical! * 3,
            ),
            SizedBox(
              height: 304,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 20),
                    height: 304,
                    width: 255,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: kWhiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: kDarkBlueColor.withOpacity(0.051),
                          offset: const Offset(0.0, 3),
                          blurRadius: 24,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 164,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kBorderRadius),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/bali.png'),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: Config.blockSizeVertical! * 1.8,
                        ),
                        Flexible(
                          child: Text(
                            'Feel the thrill on the only surf simulator in Maldives 2022',
                            style: kPoppinsBold.copyWith(
                              fontSize: Config.blockSizeHorizontal! * 3.5,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: Config.blockSizeVertical! * 1.5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 19,
                                  backgroundColor: kLightBlueColor,
                                  backgroundImage:
                                      AssetImage('assets/bali.png'),
                                ),
                                SizedBox(
                                  width: Config.blockSizeHorizontal! * 1.5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sam Aziz Ahwan',
                                      style: kPoppinsSemiBold.copyWith(
                                        fontSize:
                                            Config.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                    SizedBox(
                                      height: Config.blockSizeVertical! * .5,
                                    ),
                                    Text(
                                      'Sep 9, 2022',
                                      style: kPoppinsRegular.copyWith(
                                        color: kGreyColor,
                                        fontSize:
                                            Config.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 38,
                              width: 38,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(kBorderRadius),
                                color: kLightWhiteColor,
                              ),
                              child: SvgPicture.asset(
                                'assets/send.svg',
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: Config.blockSizeVertical! * 3,
            ),
            Row(
              children: [
                Text(
                  'Short For You',
                  style: kPoppinsBold.copyWith(
                    fontSize: Config.blockSizeHorizontal! * 4.5,
                  ),
                ),
                Text(
                  'Short For You',
                  style: kPoppinsBold.copyWith(
                    fontSize: Config.blockSizeHorizontal! * 4.5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
