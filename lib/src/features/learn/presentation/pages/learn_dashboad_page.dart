import 'package:flutterguide/src/core/core.dart';
import 'package:sidebarx/sidebarx.dart';

import '../widgets/widgets.dart';

class LearnDashboadPage extends StatefulWidget {
  const LearnDashboadPage({super.key});

  @override
  State<LearnDashboadPage> createState() => _LearnDashboardPageState();
}

class _LearnDashboardPageState extends State<LearnDashboadPage> {
  final _controller = SidebarXController(selectedIndex: 0, extended: true);
  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      final isSmallScreen = MediaQuery.of(context).size.width < 600;
      return Scaffold(
        backgroundColor: AppColors.white,
        key: _key,
        appBar: isSmallScreen
            ? AppBar(
                backgroundColor: AppColors.canvasColor,
                title: Text(getTitleByIndex(_controller.selectedIndex)),
                leading: IconButton(
                  onPressed: () {
                    _key.currentState?.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        drawer: HomePageSidebar(controller: _controller),
        body: Row(
          children: [
            if (!isSmallScreen) HomePageSidebar(controller: _controller),
            Expanded(
              child: Center(
                child: HomeSideMenu(
                  controller: _controller,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class HomeSideMenu extends StatelessWidget {
  const HomeSideMenu({
    super.key,
    required this.controller,
  });

  final SidebarXController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return const Text('Home Page');

          case 1:
            return const Text('Entry Models');

          default:
            return const Text('Home Page');
        }
      },
    );
  }
}
