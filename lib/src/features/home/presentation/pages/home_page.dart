import 'package:flutterguide/src/core/assets/assets.gen.dart';
import 'package:flutterguide/src/core/core.dart';
import 'package:flutterguide/src/core/widgets/image_type_enum.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> drawerItems = [
    ListTile(
      leading: const Icon(Icons.school),
      title: Text(
        "Learn",
        style: AppStyles.text18PxMedium,
      ),
      onTap: () {},
    ),
    ListTile(
      leading: const Icon(Icons.contact_phone),
      title: Text("Contact", style: AppStyles.text18PxMedium),
      onTap: () {},
    ),
    ListTile(
      leading: const Icon(Icons.analytics),
      title: Text("Analysis", style: AppStyles.text18PxMedium),
      onTap: () {},
    ),
  ];

  List<Widget> navItems = [
    TextButton(
      onPressed: () {},
      child: Text("Entry Models", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("CandleSticks", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Contact", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Analysis", style: AppStyles.text18PxMedium.white),
    ),
    TextButton(
      onPressed: () {},
      child: Text("Learn", style: AppStyles.text18PxMedium.white),
    ),
    100.horizontalSpace,
  ];
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
                  ...drawerItems,
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
              actions: !mobile ? navItems : null,
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
                        80.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                            !mobile
                                ? SizedBox(
                                    height: context.height * .4,
                                    child: Container(
                                      child: AppCacheImageViewer(imageUrl: Assets.images.pnglogo.path, imageTypeEnum: ImageTypeEnum.assets),
                                    ),
                                  )
                                : const SizedBox(),
                            // Expanded(
                            //   child: Card(
                            //     color: AppColors.white.withOpacity(.8),
                            //     child: Padding(
                            //       padding: const EdgeInsets.all(10.0),
                            //       child: Column(
                            //         crossAxisAlignment: CrossAxisAlignment.start,
                            //         children: [
                            //           10.verticalSpace,
                            //           Text(
                            //             "What is Forex ? - Daily Volume, Trading Hours, Trading Days",
                            //             style: AppStyles.text20PxMedium,
                            //           ),
                            //           10.verticalSpace,
                            //           Html(
                            //             ///what is forex
                            //             ///
                            //             ///
                            //             data: AppConstants.whatIsForex,
                            //             style: {
                            //               "body": Style(
                            //                 fontSize: FontSize(14.0),
                            //                 color: Colors.black,
                            //               ),
                            //               "b": Style(
                            //                 fontWeight: FontWeight.bold,
                            //               ),
                            //             },
                            //           ),
                            //           10.verticalSpace,
                            //           ClipRRect(
                            //             borderRadius: BorderRadius.circular(10.0),
                            //             child: SizedBox(
                            //               height: 250,
                            //               child: AppCacheImageViewer(
                            //                 imageUrl: Assets.images.forexVolume.path,
                            //                 imageTypeEnum: ImageTypeEnum.assets,
                            //                 fit: BoxFit.fill,
                            //               ),
                            //             ),
                            //           ),
                            //           20.verticalSpace,
                            //           Text(
                            //             "Hoping you know the basic terms of forex such as pips, candlesticks, etc.\nLet's deep dive into the real world of trading !\n",
                            //             style: AppStyles.text14PxSemiBold,
                            //           ),
                            //         ],
                            //       ).px(10.0),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ).px(18.0),
                        50.verticalSpace,
                        const InfoCardWidgets(),
                        30.verticalSpace,
                        Container(
                          color: AppColors.white,
                          width: double.infinity,
                          height: context.height * .7,
                          child: Center(
                              child: Text(
                            "Hall of Fames",
                            style: AppStyles.text30PxBold,
                          )),
                        ),
                        Container(
                          height: 300,
                          color: AppColors.black,
                          width: double.infinity,
                          child: Center(
                              child: Text(
                            "Footer",
                            style: AppStyles.text30PxBold.white,
                          )),
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

class InfoCardWidgets extends StatelessWidget {
  const InfoCardWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Get engaged with FX Academy features", style: AppStyles.text24PxMedium.white),
        30.verticalSpace,
        Row(
          children: [
            20.horizontalSpace,
            InfoCard(
              title: "Learn",
              description: "Learn the basics of trading and how to use the platform",
              buttonText: "Start Learning",
              onButtonPressed: () {
                // Handle Learn button press
              },
            ),
            20.horizontalSpace,
            InfoCard(
              title: "Analysis",
              description: "Learn how to analyze the market and make informed decisions",
              buttonText: "Start Analyzing",
              onButtonPressed: () {
                // Handle Analysis button press
              },
            ),
            20.horizontalSpace,
          ],
        ),
        30.verticalSpace,
        Row(
          children: [
            20.horizontalSpace,
            InfoCard(
              title: "Entry Models",
              description: "Start exploring the best entry models for trading",
              buttonText: "Start Exploring",
              onButtonPressed: () {
                // Handle Learn button press
              },
            ),
            20.horizontalSpace,
            InfoCard(
              title: "Analysis",
              description: "Learn how to analyze the market and make informed decisions",
              buttonText: "Start Analyzing",
              onButtonPressed: () {
                // Handle Analysis button press
              },
            ),
            20.horizontalSpace,
          ],
        ),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  const InfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Handle card tap if needed
        },
        child: Card(
          color: AppColors.black,
          child: Column(
            children: [
              20.verticalSpace,
              Text(
                title,
                style: AppStyles.text20PxMedium.white,
              ),
              20.verticalSpace,
              Text(
                description,
                style: AppStyles.text14Px.white,
                textAlign: TextAlign.center,
              ).px(8.0),
              20.verticalSpace,
              TextButton(
                onPressed: onButtonPressed,
                child: Text(buttonText),
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
