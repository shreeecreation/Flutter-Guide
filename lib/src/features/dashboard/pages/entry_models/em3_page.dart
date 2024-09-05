import 'package:flutter_html/flutter_html.dart';
import 'package:flutterguide/src/core/core.dart';

class EntryModel3 extends StatelessWidget {
  const EntryModel3({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(
            title: "Entry Model - 3",
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.verticalSpace,
                  Text("Entry Model - 3 (Fixed Volume Profile)", style: AppStyles.text24PxBold),
                  30.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: context.height * 0.7,
                        child: AppCacheImageViewer(
                          imageUrl: Assets.images.em3.path,
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
<p>This is the entry model based on indicator Fixed Volume Range Profile. <br><br>
In the chart we have mark down different key levels of volume the POC, VaH, VaL level. 
<br>
We have marked the price is being rejected once from the VaH and PoC level work as a support zone. 
After again the rejection tools place in the VaH area which forms a doji candle and a liquidity swept of previous VaH candle which gives a clear confirmation that the sellers are more strong.
<br>
<br>
By this mentality we took a trade from the doji candle and the TP to the PoC level because we didn’t knew how the PoC level reacts when the price arrives there. 
<br>
<br>
By this technique or marking other key levels rejection on PoC level or VaL area can be the good way to confirm the market continuation or market reversal. 

<br>
<br>
</p>
''';
}
