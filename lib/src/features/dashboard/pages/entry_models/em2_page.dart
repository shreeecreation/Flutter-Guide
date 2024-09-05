import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class EntryModel2 extends StatelessWidget {
  const EntryModel2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Entry Model - 2",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Entry Model - 2 (ACM)", style: AppStyles.text24PxBold),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.7,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.em2.path,
                          imageTypeEnum: ImageTypeEnum.assets,
                        ),
                      ),
                    ],
                  ),
                  Html(
                    data: EntryModel1Content().em1,
                    style: {
                      "p": HtmlStyleHelper.htmlStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    },
                  ),
                  30.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EntryModel1Content {
  final String em1 = '''
<p>This is the Entry Model - 2  <br><br>
This is a famous model among the traders which is known as Accumulation, Manipulation, Distribution. 
Here the price the ranges to a certain range for a certain period of time, after then the price gets break out to one side after then lot of retailers get entered in the break out which is liquidity for the institutional traders. 
<br>
<br>
After the filling of Fair Value Gap the market reversed and continue to upside direction. 
<br>
<br>
But before that I wanna represent the loss trade before the ACM, which I have highlighted in the chart.
<br>
<br>
Due to psychology issue I have trade against my trading plan. The SL was hit before touching the TP with just 5 points. The trade was taken at the pull back or retest level. But due to the not big FVG the sellers start entering into the market.

</p>
''';
}
