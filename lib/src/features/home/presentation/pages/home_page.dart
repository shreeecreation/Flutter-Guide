import 'package:flutter_svg/svg.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mobile = context.width < 600;
    return ScaffoldWrapper(
      drawer: mobile
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: AssetImage('assets/forex_academy_background.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Forex Academy',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...HomePageHelpers().drawerItems,
                ],
              ),
            )
          : null,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
              pinned: !mobile,
              toolbarHeight: 110,
              elevation: 1,
              backgroundColor: AppColors.black,
              actions: !mobile ? HomePageHelpers().navItems : null,
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  children: [
                    20.horizontalSpace,
                    SizedBox(
                      height: 50,
                      child: AppCacheImageViewer(
                        imageUrl: Assets.images.fcLogo.path,
                        imageTypeEnum: ImageTypeEnum.assets,
                      ),
                    ),
                    Text(
                      'Forex Academy',
                      style: AppStyles.text20PxMedium.white,
                    ),
                  ],
                ).pOnly(top: 15.0),
              )),
          SliverToBoxAdapter(
            child: ResponsiveWrapper(
              defaultScale: true,
              minWidth: 450,
              breakpoints: const [
                ResponsiveBreakpoint.resize(600, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
              ],
              child: Container(
                color: AppColors.black,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: context.height * 2,
                      child: Opacity(
                        opacity: 0.15,
                        child: AppCacheImageViewer(
                          imageUrl: mobile ? Assets.images.tradingProtrait.path : Assets.images.background.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        30.verticalSpace,
                        Center(
                          child: Text(
                            "Welcome G's !",
                            style: AppStyles.text30PxMedium.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        60.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            !mobile
                                ? SizedBox(
                                    height: context.height * .4,
                                    child: AppCacheImageViewer(imageUrl: Assets.images.pnglogo.path, imageTypeEnum: ImageTypeEnum.assets),
                                  )
                                : const SizedBox(),
                            SizedBox(
                              width: mobile ? context.width : context.width * .5,
                              child: Column(
                                crossAxisAlignment: mobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "The Game - Forex Trading",
                                    style: AppStyles.text36PxSemiBold.white,
                                    textAlign: TextAlign.center,
                                  ),
                                  15.verticalSpace,
                                  Text(
                                    "This game is a constant battle between you and your emotions. It is a battleground where mastering your emotions is the key to success.",
                                    style: AppStyles.text18PxMedium.white,
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    "The secret of getting ahead is getting started. — Mark Twain",
                                    style: AppStyles.text16PxSemiBold.copyWith(fontStyle: FontStyle.italic, color: AppColors.greyColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ).px(18.0),
                        50.verticalSpace,
                        const InfoCardWidgets(),
                        50.verticalSpace,
                        Container(
                          color: AppColors.white,
                          width: double.infinity,
                          height: context.height * .55,
                          child: Center(
                            child: Column(
                              children: [
                                30.verticalSpace,
                                Text(
                                  "Hall of Fames",
                                  style: AppStyles.text30PxBold,
                                ),
                                30.verticalSpace,

                                ///
                                ///
                                ///
                                /// hall of fames
                                ///
                                ///
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:
                                      HomePageHelpers().hallOfFamers.map((e) => HallOfFameWidget(name: e["name"], imageUrl: e["imageUrl"])).toList(),
                                ),
                                50.verticalSpace,
                                Text(
                                  "They are the Hall of Famers in the forex market, recognized for their exceptional trading journeys. Their stories serve as an inspiration to many new traders, and their strategies are seen as the key to success in the forex market. Some of them started from \$10000, \$1000. They are the living proof that anyone can make it in the forex market.",
                                  style: AppStyles.text16PxSemiBold,
                                  textAlign: TextAlign.center,
                                ).px(20.0),

                                ///
                                ///
                                ///
                                ///
                                ///
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 300,
                          color: AppColors.black,
                          width: double.infinity,
                          child: Footer(),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Disclaimer', style: AppStyles.text20PxMedium.white),
          5.verticalSpace,
          const Divider(),
          5.verticalSpace,
          Text(
            "Forex trading is a high-risk activity and may not be suitable for everyone. You should carefully consider your investment objectives, level of experience, and risk appetite before making a decision to trade. The information provided by Forex Academy is for educational purposes only.\nForex Academy does not provide investment or financial advice. Forex Academy is not responsible for any financial losses incurred as a result of using any of the information provided on the website. Forex Academy is not responsible for any financial losses incurred as a result of using any of the information provided on the website.",
            style: AppStyles.text13Px.white,
          ),
          10.verticalSpace,
          CustomOutlinedButton.icon(
            borderColor: AppColors.white,
            isDisabled: false,
            label: "Get on Play Store",
            textColor: AppColors.white,
            labelStyle: AppStyles.text12Px.white,
            onPressed: () {},
            icon: AppCacheImageViewer(
              imageUrl: Assets.images.playstore.path,
              imageTypeEnum: ImageTypeEnum.assets,
            ),
          ),
          30.verticalSpace,
          SizedBox(
            width: context.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "© Forex Academy",
                  style: AppStyles.text16PxMedium.white,
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: Text("Privacy Policy", style: AppStyles.text16PxMedium.white)),
                    5.horizontalSpace,
                    TextButton(onPressed: () {}, child: Text("Terms and Services", style: AppStyles.text16PxMedium.white)),
                    5.horizontalSpace,
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
