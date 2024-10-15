import 'package:flutterguide/src/core/core.dart';
import 'package:flutterguide/src/features/dashboard/pages/analysis_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/candlesticks/important_candlestick_patterns.dart';
import 'package:flutterguide/src/features/dashboard/pages/entry_models/em1_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/entry_models/what_why_entry_models.dart';
import 'package:flutterguide/src/features/dashboard/pages/indicators/fixed_volume_profile_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/indicators/rsi_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/market_terms/bos_choch_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/trading_plan.dart';
import 'package:flutterguide/src/features/dashboard/pages/truth_of_trading_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/types_of_traders_page.dart';
import 'entry_models/em2_page.dart';
import 'entry_models/em3_page.dart';
import 'pages.dart';

class ScreensView extends StatelessWidget {
  final String menu;
  const ScreensView({super.key, required this.menu});
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (menu) {
      case 'Introduction':
        page = const IntroductionPage();
        break;
      case 'Basic of Forex':
        page = const BasicOfForexPage();
        break;
      case 'Pips':
        page = const PipsPage();
        break;
      case 'Ask Bid Spread':
        page = const AskBidPage();
        break;
      case 'Leverage':
        page = const LeveragePage();
        break;
      case 'Lot Size':
        page = const LotSizePage();
        break;
      case 'SL, TP, BE, TSL':
        page = const SlTpPage();
        break;
      case 'Brokers and Platforms':
        page = const BrokerPlatformPage();
        break;
      case 'Candlesticks':
        page = const CandlesticksPage();
        break;
      case 'Candlestick What ? Why ?':
        page = const WhatWhyCandlestick();
        break;
      case 'Important CandleSticks':
        page = const ImportantCandleSticks();
        break;
      case 'CandleStick Patterns':
        page = const CandlestickPatternsPage();
        break;

      case 'CandleStick Patterns What ? Why ?':
        page = const CandlestickPatternsWhatWhy();
        break;
      case 'Important Candlestick Patterns':
        page = const ImportantCandlestickPatterns();
        break;
      case 'Market Terms':
        page = const MarketTermsPage();
        break;
      case 'Support & Resistance':
        page = const SupportResistancePage();
        break;
      case 'FVG':
        page = const FvgPage();
      case 'BOS & ChoCh':
        page = const BosChochPage();
        break;
      case 'Liquidity':
        page = const LiquidityPage();
        break;
      case 'SSL & BSL':
        page = const SslBslPage();
        break;
      case 'Indicators':
        page = const IndicatorsPage();
        break;
      case 'Fibonacci':
        page = const FibonacciPage();
        break;
      case 'Volume':
        page = const VolumePage();
        break;
      case 'RSI':
        page = const RSIPage();
        break;
      case 'Fixed Volume Profile':
        page = const FixedVolumeProfilePage();
        break;
      case 'Type of Traders':
        page = const TypesOfTradersPage();
        break;
      case 'Entry Models':
        page = const WhatWhyEntryModels();
        break;
      case 'EM1':
        page = const EntryModel1();
        break;
      case 'EM2':
        page = const EntryModel2();
        break;
      case 'EM3':
        page = const EntryModel3();
        break;
      case 'The truth of trading':
        page = const TheTruthofTradingPage();
        break;
      case 'Trading Plans':
        page = const TradingPlanPage();
        break;
      case 'Today Analysis':
        page = const AnalysisPage();
        break;
      default:
        page = const Center(
          child: Text(
            "Other Page",
            style: TextStyle(
              color: Color(0xFF171719),
              fontSize: 22,
            ),
          ),
        );
    }
    return page;
  }
}
