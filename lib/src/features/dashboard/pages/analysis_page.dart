import 'package:flutterguide/src/core/core.dart';

///Analysis page have
/// one photo, one title, one paragraph

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      body: CustomScrollView(
        slivers: [
          const FlutterGuideAppBar(title: "Today Analysis"),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
