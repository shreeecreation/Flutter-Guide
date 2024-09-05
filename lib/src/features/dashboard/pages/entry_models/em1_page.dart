import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class EntryModel1 extends StatelessWidget {
  const EntryModel1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Entry Model - 1",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Entry Model - 1 (Reversal Trend)", style: AppStyles.text24PxBold),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.7,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.em1.path,
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
<p>Here is the <strong>Entry Model - 1</strong> that we follow warriors. <br><br>
Here we can see that the price have a clear down trend and came to a point where it starts ranging and swept the liquidity and start continuing to the upside 

So, to confirm my first entry model 1 I waited till the price ranges and swept the liquidity of the lower low. I have entered into the trade in 190.791 by keeping to the SL to the liquidity swept  and Take Profit to the next Fair Value Gap. 
<br>
<br>
This is one of the best Entry Models to identify the liquidity swept and the reversal happens
</p>
''';
}
