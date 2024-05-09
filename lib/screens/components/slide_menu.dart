import 'package:admin_panel_ui/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: SizedBox(
              width: 100,
                child: Image.asset(
              Assets.images.logo.path,
              color: Colors.white,
            )),
          ),
          DrawerListTile(
            title: 'Dashboard',
            svg: Assets.icons.menuDashbord,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Transactions',
            svg: Assets.icons.menuTran,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Tasks',
            svg: Assets.icons.menuTask,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Documents',
            svg: Assets.icons.menuDoc,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Store',
            svg: Assets.icons.menuStore,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Notifications',
            svg: Assets.icons.menuNotification,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Profile',
            svg: Assets.icons.menuProfile,
            onTap: () {},
          ),
          DrawerListTile(
            title: 'Settings',
            svg: Assets.icons.menuSetting,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svg,
    required this.onTap,
  });
  final String title;
  final String svg;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        horizontalTitleGap: 0.0,
        leading: SvgPicture.asset(
          svg,
          colorFilter: ColorFilter.mode(
            Colors.white54,
            BlendMode.srcIn,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white54),
        ));
  }
}
