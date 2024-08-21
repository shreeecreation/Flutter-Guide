import 'package:flutterguide/src/core/core.dart';
import 'package:flutterguide/src/features/dashboard/pages/candlesticks/important_candlestick_patterns.dart';
import 'package:flutterguide/src/features/dashboard/pages/market_terms/bos_choch_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/market_terms/fvg_page.dart';
import 'package:flutterguide/src/features/dashboard/pages/market_terms/market_terms_page.dart';
import 'pages.dart';

class ScreensView extends StatelessWidget {
  final String menu;
  const ScreensView({Key? key, required this.menu}) : super(key: key);
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
