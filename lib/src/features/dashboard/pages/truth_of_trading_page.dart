import 'package:flutterguide/src/core/core.dart';

class TheTruthofTradingPage extends StatelessWidget {
  const TheTruthofTradingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(title: "The truth of trading"),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const FlutterGuideAppbar(title: "Introduction"),
                  20.verticalSpace,
                  Text(
                    "The Truth",
                    style: AppStyles.text20PxBold,
                  ),
                  10.verticalSpace,
                  Text(
                    '''
Warriors, in the world of trading, there are always two sides to the coin. On one side, you have social media influencers who project an image of effortless success, while on the other, you have the reality of actual trading. The truth is that real trading is vastly different from the picture-perfect scenes you often see online. Influencers frequently flaunt piles of cash, but much of that wealth comes not from trading itself, but from selling courses to eager beginners.\n
True trading is a complex and challenging endeavor, filled with stress, self-doubt, fluctuating confidence, and occasional moments of triumph. As retail traders, we are merely small fish in a vast ocean, swimming among the sharks—those big players who dominate the market.\n
The big players, with their immense capital—often running into millions—have the power to move the market in significant ways. Their primary objective is to extract liquidity, and as retail traders, we are often the target. These big players can manipulate market movements, making it increasingly difficult for the average trader to succeed.\n
In this environment, understanding the reality of trading and the forces at play is crucial. It's not just about strategies and indicators; it's about recognizing the challenges and preparing yourself to navigate the turbulent waters of the forex market.\n
But with all these things we retailers try to get profitable, trying to get the life we want, trying to retire our parents. We are warriors and this battlefield will not give us a chance to complete our dreams. We have to fight for it. \n

Basically retail traders are competing against the millionaire’s who are doubled their age. \n

In this battlefield many small age traders from age group 18 - 20 are being listed and they are competing against the millionaires doubled their age, they are already a champion who have got a different mindset from the rest of matrix children. \n

Wish you luck to all our warriors on this battlefield. 

''',
                    style: AppStyles.text18PxMedium,
                  ),
                  40.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
