import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class FixedVolumeProfilePage extends StatelessWidget {
  const FixedVolumeProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Fixed Volume Profile",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Learn Forex - Fixed Volume Profile", style: AppStyles.text24PxBold),
                  10.verticalSpace,
                  Html(
                    data: FVPContents().candlestickIntroduction,
                    style: {
                      "h2": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w600),
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "li": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      "ul": HtmlStyleHelper.htmlStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    },
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.fvp1.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.fvp2.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Here we can see the orange line is our sunday open. Here we need to mark the volume profile from the sunday open to the current date. Then we can see the POC, VaH, VaL area in the market. We can see that the market have been respecting the VaH area in multiple times and reversed.  We can have a trade plan in the VaH area while it being rejected for the second time.\nThis is just a example of a Fixed range volume profile we can use the combination of sessions and volume profile to trade the plan. We need to have practice in order to get the trading plans.\n\nLet’s see a simple clear example",
                    style: AppStyles.text18PxMedium,
                  ),
                  10.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.5,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.fvp3.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                      "This is the today trade example from our member where the London Session liquidity were swept out by the New York session traders and they are hunting down the other retail trader stop loss between these session we can plan our trade. \n\nHere we have 1: 2.5 RRR trade and a waterfall trade. ",
                      style: AppStyles.text18PxMedium),
                  10.verticalSpace,
                  Text("Conclusion", style: AppStyles.text18PxSemiBold),
                  5.verticalSpace,
                  Text(
                    "We state that the patience is the key level among all the indicators and tools. We have been waiting from past 4 hours to took this plan to make sure our entry are formed properly. Practice the Volume profile indicator as much as you can this is enough indicator to become consistent profitable trader.",
                    style: AppStyles.text18PxMedium,
                  ),
                  30.verticalSpace
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FVPContents {
  final String candlestickIntroduction = '''
<p>This tool is one of the favorite tool among the trader which have straight forward entry key levels defined such as the <strong>POC ( Point of Control )</strong> which means in a week where the most trader are being active, <strong>VaH (Value are high)</strong> which means the weekly high traded area level, <strong>VaH( Value are Low )</strong> which is weekly low traded area level. 
<br>
Volume Profile needs a lot of practice and experience let’s see a clear example of Volume Profile here. 
<br>

Make sure to use <strong>Sunday Open</strong> indicator to mark a <strong>sunday open<.</strong> </p>
 ''';
}
