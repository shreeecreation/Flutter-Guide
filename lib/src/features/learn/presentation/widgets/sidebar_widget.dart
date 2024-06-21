
import 'package:flutterguide/src/core/core.dart';
import 'package:sidebarx/sidebarx.dart';

class HomePageSidebar extends StatelessWidget {
  const HomePageSidebar({
    super.key,
    required SidebarXController controller,
  }) : _controller = controller;

  final SidebarXController _controller;

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: SidebarXTheme(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
          borderRadius: BorderRadius.circular(20),
        ),
        hoverColor: AppColors.scaffoldBackground,
        textStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
        selectedTextStyle: const TextStyle(color: Colors.white),
        hoverTextStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        itemTextPadding: const EdgeInsets.only(left: 30),
        selectedItemTextPadding: const EdgeInsets.only(left: 30),
        itemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:AppColors.canvasColor),
        ),
        selectedItemDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.actionColor.withOpacity(0.37),
          ),
          // gradient: const LinearGradient(
          //   colors: [accentCanvasColor, canvasColor],
          // ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.28),
              blurRadius: 30,
            )
          ],
        ),
        iconTheme: IconThemeData(
          color: Colors.white.withOpacity(0.7),
          size: 20,
        ),
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 20,
        ),
      ),
      extendedTheme: const SidebarXTheme(
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.canvasColor,
        ),
      ),
      footerDivider: divider,
      headerBuilder: (context, extended) {
        return Column(
          children: [
            // SizedBox(
            //   height: 130,
            //   child: Padding(
            //     padding: const EdgeInsets.all(16.0),
            //     child: profilePicture(130),
            //   ),
            // ),
            Text(
              "Welcome Admin\n\nDharbendra Prasad Yadav",
              style: AppStyles.text12PxMedium.white,
              textAlign: TextAlign.center,
            ),
            20.verticalSpace,
          ],
        );
      },
      items: [
        SidebarXItem(
          icon: Icons.home,
          label: 'Home',
          onTap: () {
            debugPrint('Home');
          },
        ),
        const SidebarXItem(
          icon: Icons.post_add_sharp,
          label: 'Posts',
        ),
        const SidebarXItem(
          icon: Icons.people,
          label: 'Users',
        ),
        SidebarXItem(
          icon: Icons.feedback,
          label: 'Feedback',
          selectable: false,
          onTap: () => _showDisabledAlert(context),
        ),
        SidebarXItem(
          icon: Icons.report_rounded,
          label: 'Report',
          selectable: false,
          onTap: () => _showDisabledAlert(context),
        ),
        SidebarXItem(
          icon: Icons.accessibility,
          label: 'Access',
          selectable: false,
          onTap: () => _showDisabledAlert(context),
        ),
        SidebarXItem(
          icon: Icons.settings,
          label: 'Settings',
          selectable: false,
          onTap: () => _showDisabledAlert(context),
        ),
      ],
    );
  }

  void _showDisabledAlert(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Item disabled for selecting',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

String getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Posts';
    case 2:
      return 'Users';
    case 3:
      return 'Feedback';
    case 4:
      return 'Report';
    case 5:
      return 'Profile';
    case 6:
      return 'Access';
    case 7:
      return 'Settings';
    default:
      return 'Not found page';
  }
}
final divider = Divider(color: AppColors.white.withOpacity(0.3), height: 1);
