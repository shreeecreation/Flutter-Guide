import 'package:animated_tree_view/animated_tree_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterguide/src/core/core.dart';
import 'basic_of_forex/basic_of_forex_page.dart';
import 'blocs/blocs.dart';
import 'pages.dart';

class SidebarMenu extends StatelessWidget {
  const SidebarMenu({Key? key, required this.menu}) : super(key: key);
  final String menu;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => SidebarMenuBloc()..add(FetchSidebarMenuEvent(menu: menu)),
          ),
        ],
        child: Builder(builder: (context) {
          BlocProvider.of<SidebarMenuBloc>(context).add(FetchSidebarMenuEvent(menu: menu));
          return Scaffold(
            backgroundColor: const Color(0xFFe2e1e4),
            body: BlocBuilder<SidebarMenuBloc, SidebarMenuState>(
              builder: (context, state) {
                if (state is SidebarMenuSuccess) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color(0xFF171719),
                        width: 250,
                        child: Column(
                          children: [
                            // Widget at the top side of the sidebar (preference).
                            Container(
                              color: const Color(0xFF171719),
                              width: 250,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 15,
                                  left: 12,
                                  right: 12,
                                  bottom: 15,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    20.vSpace,
                                    Text(
                                      "Forex Academy",
                                      style: AppStyles.text20PxSemiBold.white,
                                    ),
                                    5.vSpace,
                                    Text(
                                      "Journey begins here",
                                      style: AppStyles.text12PxSemiBold.textGrey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Sidebar menu widget
                            Expanded(
                              child: Container(
                                color: const Color(0xFF171719),
                                child: TreeView.simple(
                                  expansionBehavior: ExpansionBehavior.collapseOthers,
                                  showRootNode: false,
                                  tree: SidemenuNodes().menuTree,
                                  indentation: const Indentation(width: 0),
                                  expansionIndicatorBuilder: (context, node) {
                                    return ChevronIndicator.rightDown(
                                      alignment: Alignment.centerLeft,
                                      tree: node,
                                      color: Colors.white,
                                      icon: Icons.arrow_right,
                                    );
                                  },
                                  onItemTap: (item) {
                                    BlocProvider.of<SidebarMenuBloc>(context).add(FetchSidebarMenuEvent(menu: item.key));
                                    print(item.key);
                                  },
                                  builder: (context, node) {
                                    final isSelected = state.menu == node.key;
                                    final isExpanded = node.isExpanded;
                                    return MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        color: node.level >= 2 || isExpanded
                                            ? const Color(0xFF313136) // For coloring the background of child nodes
                                            : const Color(0xFF171719),
                                        height: 42, // Padding between one menu and another.
                                        width: 250,
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: node.level >= 2
                                              ? const EdgeInsets.only(left: 27) // Padding for the children of the node
                                              : const EdgeInsets.only(left: 0),
                                          child: Container(
                                            width: 250,
                                            height: 45, // The size dimension of the active button
                                            alignment: Alignment.centerLeft,
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? node.isLeaf
                                                      ? const Color(0xFF2c45e8) // The color for the active node.
                                                      : null
                                                  : null,
                                              borderRadius: const BorderRadius.only(
                                                topLeft: Radius.circular(
                                                  50,
                                                ),
                                                bottomLeft: Radius.circular(
                                                  50,
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 25,
                                              ),
                                              child: node.level >= 2
                                                  ? Text(
                                                      node.key,
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                      ),
                                                    )
                                                  : Row(
                                                      children: [
                                                        Icon(
                                                          node.data,
                                                          size: 20,
                                                          color: Colors.white,
                                                        ),
                                                        const SizedBox(
                                                          width: 6,
                                                        ),
                                                        Text(
                                                          node.key,
                                                          style: const TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ScreensView(menu: state.menu),
                      ),
                    ],
                  );
                } else if (state is SidebarMenuError) {
                  return const Center(
                    child: Text(
                      "An error has occurred. Please try again later.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          );
        }),
      ),
    );
  }
}

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
        page = BasicOfForexPage();
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
